def app

pipeline{
	 
        agent any
       
        tools{
            maven 'Maven'
            jdk 'Java 1.8'
        }
          stages{
            '''stage('env configure') {
                steps{
                    sh 
                    echo "PATH = ${PATH}"
                    echo "MAVEN_HOME = ${MAVEN_HOME}"
                    
                }
            }
            stage('checkout'){
              steps{
	      	script{
                  //checkout scm
                   git branch: 'test', url: 'https://github.optum.com/nmotati/memory-demo-api.git'
                //git clone -b R1.0 https://github.optum.com/optumrx-experienceapi/consumer-login-api.git

            }
	    }
          }'''
		 
          stage('build"'){
            steps{
	    	script{
                sh "mvn clean package -DskipTests" 
	       
            }
	    }
       }
stage('Registring image and Docker image Build'){
    steps{
     	script{
app = docker.build("demoapp")
}
}
}
 
// stage('Push image to ACR with buildno tag'){
//     steps{
//      	script{
// //You would need to first register with ACR before you can push images to your account

//   docker.withRegistry('https://demodockerrepo.azurecr.io', 'demodockerrepo') {
//       app.push("${env.BUILD_NUMBER}")
//       app.push("latest")

//       }
//      	}
//     }
          
// }
}
}
