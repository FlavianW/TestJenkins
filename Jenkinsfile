pipeline {
    agent any
    options {
        timeout(time: 1, unit: 'MINUTES') // Timeout global pour le pipeline
    }
    stages {
        stage('Clone Git Repository') {
            steps {
                script {
                    // Connexion SSH et clonage du dépôt Git avec mot de passe
                    // Remplacez les informations de connexion par les vôtres
                    bat 'ssh -ssh root@127.0.0.1 -pw "AZER" -P 42 "rm -rf /var/www/* && mkdir /var/www/html && git clone https://github.com/FlavianW/TestJenkins.git /var/www/html/"'
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
