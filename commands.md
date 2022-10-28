curl --request POST \
    --url "http://localhost:8083/connectors" \
    --header 'content-type: application/json' \
    --data '{
        "name": "demo-arangodb-connector",
        "config": {
            "connector.class": "io.github.jaredpetersen.kafkaconnectarangodb.sink.ArangoDbSinkConnector",
            "tasks.max": "1",
            "topics": "stream.airports,stream.flights",
            "arangodb.host": "arangodb",
            "arangodb.port": 8529,
            "arangodb.user": "root",
            "arangodb.password": "rootpassword",
            "arangodb.database.name": "demo",
            "value.converter.schemas.enable": "false",
            "key.converter.schemas.enable": "false"
        }
    }'

curl --request POST \
    --url "http://localhost:8083/connectors" \
    --header 'content-type: application/json' \
    --data '{
        "name": "demo-arangodb-connector",
        "config": {
            "connector.class": "io.github.jaredpetersen.kafkaconnectarangodb.sink.ArangoDbSinkConnector",
            "tasks.max": "1",
            "topics": "stream.airports,stream.flights",
            "arangodb.host": "arangodb",
            "arangodb.port": 8529,
            "arangodb.user": "root",
            "arangodb.password": "rootpassword",
            "arangodb.database.name": "demo"
        }
    }'