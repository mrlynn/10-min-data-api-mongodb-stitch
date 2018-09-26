[!MongoDB Stitch API in 10 Minutes](https://cdn-images-1.medium.com/max/800/1*6CLtZEbUdqbPViengE03og.png)
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

