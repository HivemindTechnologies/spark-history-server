FROM apache/spark:v3.2.1

USER root
ADD https://repo.maven.apache.org/maven2/com/amazonaws/aws-java-sdk-core/1.12.224/aws-java-sdk-core-1.12.224.jar $SPARK_HOME/jars/
ADD https://repo.maven.apache.org/maven2/com/amazonaws/aws-java-sdk-sts/1.12.224/aws-java-sdk-sts-1.12.224.jar $SPARK_HOME/jars/
ADD https://repo.maven.apache.org/maven2/com/amazonaws/aws-java-sdk-s3/1.12.224/aws-java-sdk-s3-1.12.224.jar $SPARK_HOME/jars/
ADD https://repo.maven.apache.org/maven2/com/amazonaws/aws-java-sdk-dynamodb/1.12.224/aws-java-sdk-dynamodb-1.12.224.jar $SPARK_HOME/jars/
ADD https://repo.maven.apache.org/maven2/org/apache/hadoop/hadoop-aws/3.3.1/hadoop-aws-3.3.1.jar $SPARK_HOME/jars/
ADD https://repo.maven.apache.org/maven2/org/apache/hadoop/hadoop-common/3.3.1/hadoop-common-3.3.1.jar $SPARK_HOME/jars/
RUN chmod -R 644 /opt/spark/jars/*
RUN apt update && apt full-upgrade -y && apt clean
#RUN adduser --system --home /opt/spark --shell /bin/false --no-create-home --uid 999 spark-history

USER 65534
ENTRYPOINT [ "/opt/entrypoint.sh" ]
