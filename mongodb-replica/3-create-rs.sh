#!/bin/bash

docker exec -it mongo1 mongosh -u alice -p super-secret-password --eval '
    config = {
      "_id" : "my-mongo-set",
      "members" : [
        {
          "_id" : 0,
          "host" : "mongo1:27017"
        },
        {
          "_id" : 1,
          "host" : "mongo2:27017"
        },
        {
          "_id" : 2,
          "host" : "mongo3:27017"
        }
      ]
      };
      rs.initiate(config, { force: true });
      rs.status();
    '