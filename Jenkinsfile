pipeline {
    agent any
    options {
        timeout(time: 1, unit: 'MINUTES') // Cela définira un timeout global pour le pipeline
    }
    stages {
        stage('Clone Git Repository') {
            steps {
                script {
                    // Connexion SSH et clonage du dépôt Git avec mot de passe en clair
                    bat 'putty 127.0.0.1 -P 42 -pw AZER -l root "rm -rf /var/www/html/* && git clone https://github.com/FlavianW/TestJenkins.git /var/www/html/"'
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
