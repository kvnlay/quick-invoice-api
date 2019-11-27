# quick-invoice-api

[![standard-readme compliant](https://img.shields.io/badge/standard--readme-OK-green.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)

> JSON API app build using Ruby on Rails

> App generated using [this](https://github.com/rvvergara/rails-templates/tree/master/api_template) custom Rails Template

Version 1 Features:

- User account creation and update
- Token authentication using `devise_token_auth`
- Model and request specs using `rspec-rails` and `factory_bot_rails`

## Background

With frontend frameworks and libraries increasing the complexities of processes that happen on the client side, we can now build simpler backend applications. REST API's connect such client-side applications to the database.

I built this backend API mainly for the application I built using React and Redux.

## Table of Contents

- [quick-invoice-api](#quick-invoice-api)
  - [Table of Contents](#table-of-contents)
  - [Technologies used](#main-technologies-used)
  - [Install](#install)
  - [Usage](#usage)
  - [API](#api)
  - [Maintainers](#maintainers)
  - [Contributing](#contributing)
  - [License](#license)

## Main Technologies used

- Ruby on Rails
- PostgreSQL
- Devise_token_auth
- RSpec
- FactoryBot

## Install

Follow these steps:

- clone this repo
- `cd quick-invoice-api`
- `bundle`

## Usage

```
rails s
```

Goto `localhost:3000`

Use either `httpie` on the terminal or Postman to do requests

## Maintainer

[Kingsley Omotayo](https://github.com/kvnlay)

## Contributing

[Kingsley Omotayo](https://github.com/kvnlay)

PRs accepted.

## License

MIT © 2019 Kingsley Omotayo
