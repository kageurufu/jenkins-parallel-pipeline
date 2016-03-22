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
    
    echo behave_features.toString()
    echo nose_tests.toString()

    behave_features.collect({ 'behave ' + it }) + nose_tests.collect({ 'nosetests ' + it })
}

stage 'Preparation'
node {
    checkout scm

    test_list = collectTests()
}

echo test_list.toString()
