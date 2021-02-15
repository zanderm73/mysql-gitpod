#Try it: https://gitpod.io/#https://github.com/MateusAlvarenga/mysql-gitpod

# Code Institute

Welcome USER_NAME,

We have preinstalled all of the tools you need to get started.

>**MONGO**

Start MongoDB without access control.
```
mongod --port 27017 --dbpath /workspace/data
```
Connect to the instance.
```
mongo --port 27017
```
Create the user administrator.

>use admin
```
db.createUser(
  {
    user: "myUserAdmin",
    pwd: "abc123",
    roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]
  }
)
```

Re-start the MongoDB instance with access control.
```
mongod --auth --port 27017 --dbpath /workspace/data
```
Authenticate as the user administrator.
```
mongo --port 27017 -u "myUserAdmin" -p "abc123" \
 ```

To start mongo Use: mongod --dbpath /workspace/data

Happy coding!
