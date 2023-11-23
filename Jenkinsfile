pipeline {
    agent any

    stages {
        stage('Clone Git Repository') {
            steps {
                script {
                    // Connexion SSH et clonage du dépôt Git
                    // Utilisez les credentials stockés dans Jenkins
                    sshagent(['jenkins-ssh-credential-id']) {
                        sh "ssh -o StrictHostKeyChecking=no -p 42 root@localhost 'git clone https://github.com/FlavianW/TestJenkins.git /var/www/html'"
                    }
                }
            }
        }
    }

    post {
        always {
            // Nettoyage de l'espace de travail après l'exécution du pipeline
            cleanWs()
        }
    }
}
