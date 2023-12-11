pipeline {
    agent any
    options {
        timeout(time: 1, unit: 'MINUTES') // Timeout global pour le pipeline
    }

    steps {
    sshagent(credentials: ['root']) {
      sh '''
          rm -rf /var/www/*
          mkdir /var/www/html
          git clone https://github.com/FlavianW/TestJenkins.git /var/www/html/
      '''
    }
}
    
    post {
        always {
            // Nettoyage de l'espace de travail après l'exécution du pipeline
            cleanWs()
        }
    }
}
