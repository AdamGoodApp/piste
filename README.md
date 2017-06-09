# Off Pistes

Search for Off Pistes.

## Installation (OSX)

#### Postgresql
The web app uses Postgresql for the database

* `brew install postgresql`

#### Ruby On Rails
Ruby on Rails, is a server-side web application framework written in Ruby. Rails is a model–view–controller (MVC) framework, providing default structures for a database, a web service, and web pages.

* `bundle install`
* `rails db:setup`
* Import off-piste.json into database with: `rails pistes:import`
* Start server `rails s`

#### Elasticsearch
Elasticsearch is a search engine based on Lucene. It provides a distributed, multitenant-capable full-text search engine with an HTTP web interface and schema-free JSON documents.

* `brew install elasticsearch`
* `brew services start elasticsearch`

## Tests
Testing is built using Rspec.
In the root directory, run tests with:
<br />
<br />
`rspec spec`