# Rails Blog

## About
- Rails Blog is a project that tries to simulate the experience of a blog using Rails and Tailwind.

- [Preview in production.](https://rails-blog-8888.onrender.com/)

- Note: There is a bug in production that occurs after deleting a comment. This does not happen locally.

## Features

- User creation
- Post creation
- Comment creation
- Real-time comment updates

- Post view route
- Post list route
- Login route
- Registration route

## Visitor Use Cases
- A visitor can see all posts but can't create a post or comment.
- As a visitor, I can register myself as a user to create posts and comment on posts.

## User Use Cases
- As a logged-in user, I can create posts.
- As a logged-in user, I can comment on posts.
- I can edit/delete only my posts.

## 💻 To run this project, follow these steps:

## Docker:

* `docker compose up`

## Without Docker:

### Prerequisites
* `ruby 3.2.1`
* `node >= 18.x`
* `yarn`

### Setup
* `yarn install`
* `bundle install`
* `rails db:create`
* `rails db:migrate`

### Running Project
* `./bin/dev`

## Running Tests
To run the tests, execute the following command: `bundle exec rspec`