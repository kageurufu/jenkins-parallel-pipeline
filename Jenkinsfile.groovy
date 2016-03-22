def branches = [:]
def test_list 

def collectTests = {
    // Build a list of all tests to run
    sh '''
    find features -iname \'*.feature\' > behave_features_list;
    find tests -iname \'test_*.py\' > nose_tests_list;
    '''
    
    def behave_features = readFile('behave_features_list').tokenize()
    def nose_tests = readFile('nose_tests_list').tokenize()
    def tests = []
    
    for (feature in behave_features) { tests.add('behave ' + feature) }
    for (test in nose_tests) { tests.add('nosetests ' + test) }

    tests
}

def buildVirtualenv = {
    sh '''
    virtualenv -p `which python2` virtualenv
    . virtualenv/bin/activate
    pip install -r requirements.txt
    '''

    stash name: 'src', includes: '**'
}

stage 'Preparation'
node {
    checkout scm

    test_list = collectTests()

    buildVirtualenv()
}

stage 'Tests'
for(int i = 0; i < test_list.size(); i++) {
    def test = test_list.get(i)
    branches[test] = {
        node {
            unstash 'src'

            sh '. virtualenv/bin/activate; ${test}'
        }
    }
}

parallel(branches)