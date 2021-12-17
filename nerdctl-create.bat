mvn -B -U -f ./bluesky-cloud-parent/pom.xml -DskipTests=true clean package

nerdctl build --build-arg JAR_FILE=bluesky-cloud-parent/bluesky-cloud-netflix-eureka-server/target/bluesky-cloud-netflix-eureka-server-0.0.1-SNAPSHOT.jar --tag luversof/bluesky-cloud-netflix-eureka-server .

nerdctl build --build-arg JAR_FILE=bluesky-cloud-parent/bluesky-cloud-config-server/target/bluesky-cloud-config-server-0.0.1-SNAPSHOT.jar --tag luversof/bluesky-cloud-config-server .

nerdctl build --build-arg JAR_FILE=bluesky-cloud-parent/bluesky-cloud-admin-server/target/bluesky-cloud-admin-server-0.0.1-SNAPSHOT.jar --tag luversof/bluesky-cloud-admin-server .

nerdctl tag luversof/bluesky-cloud-netflix-eureka-server:latest localhost:8083/luversof/bluesky-cloud-netflix-eureka-server

nerdctl push localhost:8083/luversof/bluesky-cloud-netflix-eureka-server

nerdctl tag luversof/bluesky-cloud-admin-server:latest localhost:8083/luversof/bluesky-cloud-admin-server

nerdctl push localhost:8083/luversof/bluesky-cloud-admin-server

nerdctl tag luversof/bluesky-cloud-config-server:latest localhost:8083/luversof/bluesky-cloud-config-server

nerdctl push localhost:8083/luversof/bluesky-cloud-config-server

kubectl delete -f kubernetes-bluesky-cloud-netflix-eureka-server.yaml -f kubernetes-bluesky-cloud-config-server.yaml -f kubernetes-bluesky-cloud-admin-server.yaml

kubectl apply -f kubernetes-bluesky-cloud-netflix-eureka-server.yaml -f kubernetes-bluesky-cloud-config-server.yaml -f kubernetes-bluesky-cloud-admin-server.yaml
