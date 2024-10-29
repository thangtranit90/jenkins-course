chmod +x ./entrypoint.sh
docker build -t jenkins-slave:latest .
docker login -u thangtranit90
docker tag jenkins-slave:latest thangtranit90/jenkins-slave:latest
docker push thangtranit90/jenkins-slave:latest


