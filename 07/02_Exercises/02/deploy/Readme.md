Connection to local MongoDB is now included in the Python app.

See lines
````
...
# mongo is the hostname of the MongoDB service as defined in docker-compose.yml.
MONGO_URI = os.getenv('MONGO_URI', 'mongodb://mongo:27017')
client = MongoClient(MONGO_URI)
db = client['taskdb']
tasks_collection = db['tasks']
...
````