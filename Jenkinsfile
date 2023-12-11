pipeline {
    agent any
    options {
        timeout(time: 1, unit: 'MINUTES') // Timeout global pour le pipeline
    }
    
    stage('Clone ') {
          checkout scm
          bat './ssh.bat'
           deleteDir() // will remove git repo.

   }
    post {
        always {
            // Nettoyage de l'espace de travail après l'exécution du pipeline
            cleanWs()
        }
    }
}
