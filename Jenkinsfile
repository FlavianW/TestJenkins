pipeline {
    agent any

    stages {
        stage('Clone Git Repository') {
            steps {
                script {
                    // Connexion SSH et clonage du dépôt Git avec mot de passe en clair
                    sh 'sshpass -p "AZER" ssh -o StrictHostKeyChecking=no -p 42 root@localhost "git clone https://github.com/FlavianW/TestJenkins.git /chemin/vers/destination"'
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
