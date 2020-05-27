# Highground logs and event pipline
This a a basic log event flow that read docker logs from a k8s nodes. Then pass the logs into a nats.io que.
Then events from the que are then read be a fluentd parser that parse thelogs and then output the logs into a elastic search.


## Service

### fluent-bit
Are deploys as a demonset and reads the docker logs from the nodes.
Then adds the kubernetes API data to the logs to add more data.
The logs are then passed inte a nats.io que.


### nats.io
This is what handels the events for the logs. As basic setup we only pass the logs but to build a more event driven structure we can add more data to the que. 
And data is then read out form the que by fluentd ore others


### fluentd
fluentd is whta reads the data from the nats.io que. The  logs are then parsed and here task can be assigend to diffrents tags.
As default now all logs are send to Elastic.
But with flentd we can add more storage like s3 ore even kafke to process logs.
fluentd is deploys as a deployemnst and can be scaled up


### Elastic / kibana
As deafult now a elastic and kibana is used to store and visulize the events.




