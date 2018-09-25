// Try running in the console below.
  
exports = function(payload) {
  const mongodb = context.services.get("mongodb-atlas");
  const mycollection = mongodb.db("mydatabase").collection("mycollection");
  return mycollection.find({}).toArray();
};