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
* Access the front end in your browser at `127.0.0.1:3000`

#### Elasticsearch
Elasticsearch is a search engine based on Lucene. It provides a distributed, multitenant-capable full-text search engine with an HTTP web interface and schema-free JSON documents.

* `brew install elasticsearch`
* `brew services start elasticsearch`

## Tests
Testing is built using Rspec.
In the root directory, run tests with:
<br />

`rspec spec`

Continuous integration is integrated via Shippable.

## API Endpoints
The API is built with versioning.
<br />

All requests are made via the base URL:
<br />
<br />
`127.0.0.1:3000/api`

__Search an off-piste line by name or partial name__

POST `/pistes/search-name`

`{ piste: { name: "Crochues-Berard Traverse" } }`

```
curl -XPOST -H "Content-type: application/json" -d '{"piste": {"name": "Crochues-Berard Traverse"}}' 'http://127.0.0.1:3000/api/pistes/search-name'
```

__Filter off-piste lines by ski difficulty and order__

POST `/pistes/search-advanced`

`{ name: "Crochues-Berard Traverse", field: "ski_difficulty", order: "asc", filter: "gt", filter_number: 3 }`

```
curl -XPOST -H "Content-type: application/json" -d '{"name": "Crochues-Berard Traverse", "field": "ski_difficulty","order": "asc", "filter": "gt", "filter_number": 3}' 'http://127.0.0.1:3000/api/pistes/search-advanced'
```

## Future improvements

__Splitting application into microservices__ 

* Elasticsearch can be deployed in several clusters to allow dynamic scalling. This can allow for Searching to be scalable in dealing with requests efficiently and with speed.

* The Rails web app can be initialised via the API mode to remove view logic, assets and only serve JSON.

* Front End can be built separately using a modern Framework such as React to consume the Rails API.

__Using NoSql databases to store JSON records__

A NoSql database such as MongoDB or Redis can be used to Read/Write the off piste JSON records with greater speed.

However, the data could likely require relational tables in the future. The Latest version of Postgresql can provide both a Relational Database with JSON stored fields providing greater flexibility.
 