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
                    bat 'putty -ssh localhost -l root -pw AZER -P 42 "rm -rf /var/www/html/* && git clone https://github.com/FlavianW/TestJenkins.git /var/www/html/"'
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
