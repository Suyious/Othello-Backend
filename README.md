# Othello: REST API

This is a Ruby on Rails REST API server application.

> Source for FrontEnd Client: [Othello](https://github.com/Suyious/Othello)

### Routes
| Prefix  | Verb  | URI Pattern  | Controller#Action |
|---|---|---|---|
|  boards | GET  |  /boards |  boards#index 
| | POST |  /boards | boards#create 
| board | GET | /boards/:id | boards#show
| | PATCH | /boards/:id | boards#update
| | PUT | /boards/:id | boards#update
| | DELETE | /boards/:id | boards#destroy
| board_lists | GET | /boards/:board_id/list | lists#index
| | POST | /boards/:board_id/lists | lists#create
| list | PATCH | /lists/:id | lists#update
| | PUT | /lists/:id | lists#update
| | DELETE | /lists/:id | lists#destroy