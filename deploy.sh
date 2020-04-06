# docker pull dockerid90/multi-client:latest
# docker pull dockerid90/multi-api:latest
# docker pull dockerid90/multi-worker:latest
# docker build --cache-from dockerid90/multi-client -t dockerid90/multi-client:latest -f ./client/Dockerfile ./client
# docker build --cache-from dockerid90/multi-api -t dockerid90/multi-api:latest -f ./server/Dockerfile ./server
# docker build --cache-from dockerid90/multi-worker -t dockerid90/multi-worker:latest -f ./worker/Dockerfile ./worker
# docker tag dockerid90/multi-client:latest dockerid90/multi-client:$SHA
# docker tag dockerid90/multi-api:latest dockerid90/multi-api:$SHA
# docker tag dockerid90/multi-worker:latest dockerid90/multi-worker:$SHA
# docker push dockerid90/multi-client:latest
# docker push dockerid90/multi-api:latest
# docker push dockerid90/multi-worker:latest
# docker push dockerid90/multi-client:$SHA
# docker push dockerid90/multi-api:$SHA
# docker push dockerid90/multi-worker:$SHA
kubectl apply -f deployments
# kubectl set image deployments/api-deployment api=dockerid90/multi-api:$SHA --record 
# kubectl set image deployments/client-deployment client=dockerid90/multi-client:$SHA --record 
# kubectl set image deployments/worker-deployment worker=dockerid90/multi-worker:$SHA --record
