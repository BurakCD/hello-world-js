pipeline { 
    agent any 
    environment { 
        registry = "server-3:5000"  
        dockerImage = "${registry}/hello-world-js:" 

    } 
    stages { 
        stage('Build') { 
            steps {  
                    sh "sudo docker build -t ${dockerImage}${env.BUILD_ID} ."
                    sh "sudo docker build -t ${dockerImage}latest ."
            } 
        } 
        stage('Push') { 
            steps { 
                script { 
                    sh "sudo docker push ${dockerImage}${env.BUILD_ID}"
                    sh "sudo docker push ${dockerImage}latest"
                } 
            } 
        } 
        stage('Deploy') { 
            steps { 
                script {
                    sshagent(['microk8s']) {
                        sh "scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null /var/lib/jenkins/workspace/hello-world-js/deployment.yaml burak@server-1:/home/burak/deployment-files/"
                        sh "ssh burak@server-1 'microk8s kubectl apply -f /home/burak/deployment-files/deployment.yaml'"
                    }
                } 
            } 
        } 
    } 
}