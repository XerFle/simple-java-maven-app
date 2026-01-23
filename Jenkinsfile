pipeline {
    agent any
    tools {
        maven 'maven' 
    }
    stages {
        stage('Build') {
            steps {
                // 编译代码，生成 jar 包
                sh 'mvn -B -DskipTests -Denforcer.skip=true clean package'
            }
        }
        // --- 新增阶段开始 ---
        stage('Build Docker Image') {
            steps {
                script {
                    // 使用 docker build 命令打包，镜像名为 my-java-app
                    sh 'docker build -t my-java-app .'
                }
            }
        }
        // --- 新增阶段结束 ---

        stage('Test') {
            steps {
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
