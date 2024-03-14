pipeline{
    agent any
    stages{
        stage('ECR login')
        {
            steps{
                script{
                sh "aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 100150221311.dkr.ecr.ap-south-1.amazonaws.com"
                }
            }
        }

        stage('git clone')
        {
            steps{
                
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/JayKapadia98/jkpedia']])
            }
        }
        stage('build image')
        {
            steps{
                script{
                dockerImage = docker.build "ecr:latest"
            }
            }
        }
        stage('Push to ECR')
        {
            steps{
                script{
                sh "docker build -t ecr ."
                sh "docker push 100150221311.dkr.ecr.ap-south-1.amazonaws.com/ecr:latest"
                }
            }
        }
    }



}