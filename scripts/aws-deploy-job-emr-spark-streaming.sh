aws emr add-steps --cluster-id <cluster-id> --steps Type=spark,Name=SparkstreamingfromKafka,Args=[--deploy-mode,cluster,--master,yarn,--conf,spark.yarn.submit.waitAppCompletion=true,--num-executors,2,--executor-cores,2,--executor-memory,3g,--class,com.awsproserv.kafkaandsparkstreaming.ClickstreamSparkstreaming,s3://yottabyte-bucket/kafkaandsparkstreaming-0.0.1-SNAPSHOT-jar-with-dependencies.jar,<kafka-broker-public-dns>:9092,clickstream],ActionOnFailure=CONTINUE
