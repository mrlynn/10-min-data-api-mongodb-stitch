![MongoDB Stitch API in 10 Minutes](https://cdn-images-1.medium.com/max/800/1*6CLtZEbUdqbPViengE03og.png)
# Creating a Data API in 10 minutes with MongoDB Stitch

This repository accompanies a video which walks through the process of creating a data endpoint API using MongoDB Stitch. 

Check out the accompanying video on [Youtube](https://www.youtube.com/watch?v=WBEzGFpAnhY).

[![Creating a Data API in 10 minutes with MongoDB Stitch](https://img.youtube.com/vi/WBEzGFpAnhY/0.jpg)](https://www.youtube.com/watch?v=WBEzGFpAnhY)

## Article
[Read the blog article](https://medium.com/@michael.lynn/creating-a-data-enabled-api-in-10-minutes-with-mongodb-stitch-6d23578fed6d) that explains how to create an API in 10 minutes (or less)

## Requirements
IF you want to follow along, you will need the following:

1. Free [MongoDB Atlas](http://cloud.mongodb.com) account.
1. [Postman](http://getpostman.com) - Data/API Testing Tool (Optional)

## Importing the Sample Application

MongoDB Stitch enables you to import a pre-existing Stitch App. To do this, install the [stitch-cli](https://docs.mongodb.com/stitch/import-export/stitch-cli-reference/) and create a `.env` file.

```
export STITCH_API_KEY=<API_KEY>
export STITCH_USERNAME=<CLOUD_USERNAME>
export STITCH_APPID=<APPID>
```

Next, make the scripts executable:

```
> chmod +x deploy
> chmod +x export
```

## Importing Data Into Your Cluster

Any application needs data, right? Well - importing data into MongoDB is super simple. I've made it even simpler with a script and an example data file. Check `contacts.csv` for an example data file and take a look at [import.sh](./import.sh) - this is a script I wrote which automates the process of importing data into your cluster. You'll need to create a .env file with values for the following:

```
CLUSTER=clustername-shard-0/clustername-shard-00-00-pmvyt.mongodb.net:27017,clustername-shard-00-01-pmvyt.mongodb.net:27017,clustername-shard-00-02-pmvyt.mongodb.net:27017
FILENAME=contacts.csv
DATABASE=hackathon
COLLECTION=contacts
USER=workshop
PASSWORD=workshop123
```

The `CLUSTER` variable can be found in your Atlas console - click the `CONNECT` button and you'll see an option for `COMMAND LINE TOOLS`. Click that button to see a list of command line tools - one of them being `mongoimport`. Look at the detail there and you'll find the CLUSTER reference. Copy/Paste that into the .env file as the value for the `CLUSTER` variable.

Next, make sure the values for `DATABASE`, `COLLECTION`, `USER`, and `PASSWORD` match your specific installation and you should be good to go.