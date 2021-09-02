def app

pipeline{
	 
        agent any
       
        tools{
            maven 'Maven'
            jdk 'Java 1.8'
        }
          stages{
		  stage("help"){
			  steps{
			  sh 'echo hi'
			  }
		  }
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
