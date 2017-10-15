# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

I needed to add this to package.json to deploy to heroku.

"engines": {    
  "node": "6.5.0",
  "yarn": "0.18.1"
},
"scripts": {
  "heroku-postbuild": "cd vendor && yarn"
},
