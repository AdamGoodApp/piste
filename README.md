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

`rspec spec`

## API Endpoints
The API is built with versioning.
<br />

All requests are made via the base URL:
<br />
<br />
`127.0.0.1:3000/api/`


__Search an off-piste line by name or partial name__
<br />
<br />
URL: 
<br />

`pistes/search-name`

Parameters: 

`{ pistes: { name: "Crochues-Berard Traverse" } }`

Example:

```
curl -XPOST -H "Content-type: application/json" -d '{"piste": {"name": "Crochues-Berard Traverse"}}' 'http://127.0.0.1:3000/api/pistes/search-name'
```

__Filter off-piste lines by ski difficulty and order__
<br />
<br />
URL: 
<br />

`pistes/search-advanced`

Parameters: 

`{ name: "Crochues-Berard Traverse", field: "ski_difficulty", order: "asc", filter: "gt", filter_number: 3 }`

Example:

```
curl -XPOST -H "Content-type: application/json" -d '{"name": "Crochues-Berard Traverse", "field": "ski_difficulty","order": "asc", "filter": "gt", "filter_number": 3}' 'http://127.0.0.1:3000/api/pistes/search-advanced'
```