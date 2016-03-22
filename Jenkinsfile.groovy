def branches = [:]
def test_list
def behave_features_list
def nose_tests_list

stage 'Preparation'
node {
    git credentialsId: 'e43c6744-c541-4970-88ae-d439baba6b24', url: 'git@github.com:DisruptiveLabs/comanage.git'

    // Build a list of all tests to run
    sh '''
        find features -iname \'*.feature\' > behave_features_list;
        find tests -iname \'test_*.py\' > nose_tests_list;
    '''
    
    echo readFile('behave_features_list').tokenize().collect({ 'behave ' + it }).toString()
}
