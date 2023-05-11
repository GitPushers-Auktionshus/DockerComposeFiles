print('Start Creating Database ############')

use('Users');

db.createUser(
  {
      user: "admin",
      pwd: "1234",
      roles:[
          {
              role: "readWrite",
              db: "Users"
          }
      ]
  }
);

db.createCollection('user');