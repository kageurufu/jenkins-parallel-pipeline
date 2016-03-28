#!groovy

def branches = [:]
def test_list 

def collectTests = {
    // Build a list of all tests to run
    def behave_features = findFiles(glob: 'features/**/*.feature')
    def nose_tests = findFiles(glob: 'tests/**/test_*.py')
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

for(int i = 0; i < test_list.size(); i++) {
    def test = test_list.get(i)
    branches[test] = {
        node {
            unstash 'src'

            sh '''
            . virtualenv/bin/activate 
            ${test}
            '''
        }
    }
}

stage 'Tests'
parallel(branches)
