pipeline {
    agent any
    options {
        timeout(time: 1, unit: 'MINUTES') // Timeout global pour le pipeline
    }

    steps {
    "aaaa" {
      bat 'ssh -o StrictHostKeyChecking=no root@127.0.0.1 -p 42 "rm -rf /var/www/* && mkdir /var/www/html && git clone https://github.com/FlavianW/TestJenkins.git /var/www/html/"'
    }
}
    
    post {
        always {
            // Nettoyage de l'espace de travail après l'exécution du pipeline
            cleanWs()
        }
    }
}
