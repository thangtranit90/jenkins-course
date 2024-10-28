docker build -t jk-custome-server:lts .
docker login -u thangtranit90
docker tag jk-custome-server:lts thangtranit90/jk-custome-server:lts
docker push thangtranit90/jk-custome-server:lts
