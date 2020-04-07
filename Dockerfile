FROM busybox

ARG JAR_FILE
ADD ${JAR_FILE} app.jar
CMD "tail" "-f" "/dev/null"