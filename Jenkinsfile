pipeline {
agent any
  tools {nodejs "node"}
  
stages {

          stage('npm install package'){
                steps{
                  echo "installing the npm package "
                    sh script: '''
                         npm install
                         
                     '''
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
        
      
      }
    }


    stage ('pushing the docker image') {
      steps{
        echo "pushing the docker image"
        
      
      }
    }

  
    stage ('deploy to dev env ') {
      steps{
        echo "deploying to dev ENVIRONMENT"
        
      }
    }
   
  
  
  
}
}
