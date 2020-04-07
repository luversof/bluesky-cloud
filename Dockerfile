FROM busybox

ARG JAR_FILE
ADD ${JAR_FILE} /test/app.jar
CMD "tail" "-f" "/dev/null"