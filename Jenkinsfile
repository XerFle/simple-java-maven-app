pipeline {
    agent any
    tools {
        maven 'maven' 
    }
    stages {
        stage('Build') {
            steps {
                // 编译并打包
                sh 'mvn -B -DskipTests -Denforcer.skip=true clean package'
            }
        }
        stage('Test') {
            steps {
                // 单元测试
                sh 'mvn test'
            }
        }
        stage('Deliver') {
            steps {
                echo 'Delivery finished!'
            }
        }
    }
}
