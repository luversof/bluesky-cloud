call mvn clean package -B -U -f ./bluesky-cloud-parent/pom.xml -DskipTests=true -P nexus-local
call nerdctl build --build-arg JAR_FILE=bluesky-cloud-parent/bluesky-cloud-netflix-eureka-server/target/bluesky-cloud-netflix-eureka-server-0.0.1-SNAPSHOT.jar --tag luversof/bluesky-cloud-netflix-eureka-server .
call nerdctl build --build-arg JAR_FILE=bluesky-cloud-parent/bluesky-cloud-config-server/target/bluesky-cloud-config-server-0.0.1-SNAPSHOT.jar --tag luversof/bluesky-cloud-config-server .
call nerdctl build --build-arg JAR_FILE=bluesky-cloud-parent/bluesky-cloud-admin-server/target/bluesky-cloud-admin-server-0.0.1-SNAPSHOT.jar --tag luversof/bluesky-cloud-admin-server .
call nerdctl tag luversof/bluesky-cloud-netflix-eureka-server:latest localhost:8083/luversof/bluesky-cloud-netflix-eureka-server
call nerdctl push localhost:8083/luversof/bluesky-cloud-netflix-eureka-server
call nerdctl tag luversof/bluesky-cloud-admin-server:latest localhost:8083/luversof/bluesky-cloud-admin-server
call nerdctl push localhost:8083/luversof/bluesky-cloud-admin-server
call nerdctl tag luversof/bluesky-cloud-config-server:latest localhost:8083/luversof/bluesky-cloud-config-server
call nerdctl push localhost:8083/luversof/bluesky-cloud-config-server
call kubectl delete -f kubernetes-bluesky-cloud-netflix-eureka-server.yaml -f kubernetes-bluesky-cloud-config-server.yaml -f kubernetes-bluesky-cloud-admin-server.yaml
call kubectl apply -f kubernetes-bluesky-cloud-netflix-eureka-server.yaml -f kubernetes-bluesky-cloud-config-server.yaml -f kubernetes-bluesky-cloud-admin-server.yaml