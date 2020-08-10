pipeline {
  environment {
    registry = "sivaramloknath64/angular"
    registryCredential = 'docker_hub_loknath'
    dockerImage = ''
  }
agent any
  
  tools {nodejs "node14"}
 
stages {

          stage('npm install package'){
                steps{
                  echo "installing the npm package "
                    sh 'npm install'
                         
                     
                    }
            }
                stage('Build'){
                    steps{
                      
                        sh 'npm run build --prod'  
                    }
                }
      
   stage ('Build Docker Image') {
      steps{
        echo "Building Docker Image"
   
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      
      }
    }


   stage ('Push Docker Image') {
      steps{
        echo "Pushing Docker Image"
        script {
          docker.withRegistry( '', registryCredential ) {
              dockerImage.push()
              dockerImage.push('latest')
          }
        }
      }
    }
  
  
  
  
  
  
  
  
   
  
  
  
}
}

