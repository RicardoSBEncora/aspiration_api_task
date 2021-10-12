# Aspiration api task

This exercise is just a solution for Aspiration api task!

https://drive.google.com/file/d/1HRZ0OqrRHwH7qBEt1JYsZlmorC7o7eUZ/view

There are 2 current know issues in the task

1. Since the request response is divided by pages, you need to make multiple requests to the same endpoint to retrieve all people
2. One of the tall persons "Tuan Wu" specified in the document does not exist in the people response, the actual name is "Taun We". This is preventing the test from passing.

## Installation
1. Install Ruby version 3.0.1 in your system
2. Install bundler gem in your ruby version `gem install bundler`
3. Install gems with `bundle install` on root folder

## Run
Run `bundle exec rspec` command on the root folder in your terminal