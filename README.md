# Tunes

## Development Environment

### Install Xcode
```sh
xcode-select --install
```

### Install rbenv
```sh
brew install rbenv ruby-build
```

### Install PostgreSQL
```sh
brew install postgresql
```

### Create Project
```sh
rails new bac-cix --api --database=postgresql
```

### Run Test
```sh
rails test
```

### Deploy to Heroku

Install heroku-cli
[Heroku](https://devcenter.heroku.com/articles/heroku-cli)

```sh
heroku login
heroku create
git config --list --local | grep heroku
git push heroku master
heroku run rake db:migrate
heroku ps:scale web=1
heroku ps
heroku open
heroku logs
```
