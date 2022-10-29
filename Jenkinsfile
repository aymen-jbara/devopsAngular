
pipeline {
          agent any
          stages{
            stage('Checkout GIT'){
                steps{
                    echo 'Pulling...';
                    git branch: 'main',
                    url : 'https://github.com/aymen-jbara/devopsAngular.git';
                }
            }
              stage('Build Docker Image') {
                 steps {
                 sh 'docker build -t aymenjbara/dockerfile_angular:2.2.2 .'
                 }
              }

              stage('Push Docker Image') {
                   steps {
                     withCredentials([string(credentialsId: 'DockerhubPWS', variable: 'DockerhubPWS')]) {
                     sh "docker login -u aymenjbara -p ${DockerhubPWS}"
                     }
                     sh 'docker push aymenjbara/dockerfile_angular:2.2.2'
                   }
              }
          }
          }








