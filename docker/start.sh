#Starts the spring boot application

java $APPD_OPTS -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -Xms$HEAP_MIN -Xmx$HEAP_MAX \
    -DCONFIG_DIR=/etc/ config/ \
    -Dserver.port=8080 \
    -Dspring.profiles.active=ECS \
    -Dspring.config.location=/etc/ config/ \
    -Dspring.config.name=config  \
    -Dmanagement.endpoints.web.base-path=/manage \
    -Dmanagement.endpoints.web.path-mapping.health=health \
    -Dmanagement.server.port=8090 \
    -jar /app/file-spring-boot-service.jar
