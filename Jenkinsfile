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
                    bat 'ssh -p 42 root@127.0.0.1 "echo hello"'
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
