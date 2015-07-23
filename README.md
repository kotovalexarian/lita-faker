Lita::Handlers::Faker
=====================

[![Gem Version](https://badge.fury.io/rb/lita-faker.svg)](http://badge.fury.io/rb/lita-faker)
[![Build Status](https://travis-ci.org/braiden-vasco/lita-faker.svg)](https://travis-ci.org/braiden-vasco/lita-faker)
[![Coverage Status](https://coveralls.io/repos/braiden-vasco/lita-faker/badge.svg)](https://coveralls.io/r/braiden-vasco/lita-faker)

Generator of fake data such as names, addresses,
and phone numbers for the [Lita](http://lita.io) chat bot.

Usage
-----

At first, see the documentation for Lita: http://docs.lita.io/

### Installation

Add **lita-faker** to your Lita instance's Gemfile:

```ruby
gem 'lita-faker', '~> 0.1.0'
```

### Configuration

Faker requires locale. Put the following to config:

```ruby
Lita.configure do |config|
  config.robot.locale = 'en-US'
end
```

### Commands

**lita-faker** provides all commands of [Faker](https://github.com/stympy/faker)
which don't require arguments

Commands are written in `snake_case`, so `Faker::PhoneNumber.cell_phone`
became `faker phone_number cell_phone`

`fake` is alias for `faker`

### Examples

```
You: lita fake name name
Lita: Halie Waelchi
You: lita faker lorem sentence
Lita: Eveniet nemo tempore voluptatem et voluptas ea.
```
