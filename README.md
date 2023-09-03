# Othello: REST API

This is a Ruby on Rails REST API server application.

### Routes
| Prefix  | Verb  | URI Pattern  | Controller#Action |
|---|---|---|---|
|  boards | GET  |  /boards |  boards#index 
| | POST |  /boards | boards#create 
| board | GET | /boards/:id | boards#show
| | PATCH | /boards/:id | boards#update
| | PUT | /boards/:id | boards#update
| | DELETE | /boards/:id | boards#destroy