def app

pipeline{
	 
        agent any
       
        tools{
            maven 'Maven'
            jdk 'Java 1.8'
        }
          stages{
		stage("Preface"){
            		steps{
                		echo "Some text to support Introduction"
               			 echo "Jenkins Pipeline with Pipeline Script"
            		}
	        }
		 stage("help"){
			  steps{
			  sh 'echo hi'
			  }
		  }
        //  stage('build"'){
          //  steps{
	    //	script{
              //  sh "mvn clean package -DskipTests" 
	       
           // }
	    //}
       //}
stage('Registring image and Docker image Build'){
    steps{
     	script{
sh 'docker build -t my-app:2.0.0 .'
}
}
}
 
 stage('Push image to ACR with buildno tag'){
   steps{
      	script{
 //You would need to first register with ACR before you can push images to your account

   docker.withRegistry('https://mytestacr123.azurecr.io', 'myTestacr123') {
       app.push("${env.BUILD_NUMBER}")
      app.push("latest")

      }
      	}
     }
          
 }
}
}
