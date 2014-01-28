# SpoonFeeder [![Build Status](https://travis-ci.org/alcesleo/spoonfeeder.png?branch=master)](https://travis-ci.org/alcesleo/spoonfeeder)

A simple blog application in rails using public_activity

Maybe even some form of automatic mail sender for notifications.

## Requirements

- Rails 3.2.16
- Ruby 2.0.0
- public_activity


## Installation

Clone this repo

    bundle install
    rails s

## Testing

Dont forget to run `rake db:test:clone` to sync the testing database.

    bundle exec rspec


## Login / Authentication

To add default user with username `admin` and passoword `seed` run:

    'rake db:seed' 

Add `skip_before_filter :authorize` to whitelist controllers (i.e. to skip authentication)

## Other

The annotate_models gem is used to increase readability. To annotate go to root and run: 

    annotate

Full instructions here: https://github.com/ctran/annotate_models
