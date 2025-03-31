pipeline {
    agent any
    stages {
        stage('agregar permisos') {
            steps {
                echo "Agregar los permisos correspondientes" 
                sh 'chmod +x ./informe_del_sistema.sh'
            }
        }
        stage('etapa1') {
            steps {
                echo "Ejecutar el informe de sistema" 
                sh './informe_del_sistema.sh'
            }
        }
    }
}