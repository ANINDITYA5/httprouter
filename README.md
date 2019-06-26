Example Redis List-based CRUD
=======

Very simple rest api to record students in classroom using list-based implementation of Redis

Dependencies
--------
- [Redis](https://redis.io)

Installation
--------
```bash
$ go get github.com/sonmezonur/crud-go-redis # under $GOPATH
```

Quick Start
--------

- Start Redis
```bash
$ redis-server
```

- Run Under Project Directory
```bash
$ go run main.go
```

API
--------

```
POST localhost:3000/students?department=CS&code=101&section=1
```

```
GET localhost:3000/students?department=CS&code=101&section=1
```

```
DELETE localhost:3000/students/example?department=CS&code=101&section=1
```

Request Body Structure for Post Request

```json
  {"id":"example"}
```


Testing
--------
Program might be tested by using curl commands

- Example Post Request

```bash
$ curl -i -X POST -H 'Content-Type: application/json' -d '{"id":"41301749"}' "http://localhost:3000/students?department=CS&code=101&section=1"
```

- Example Delete Request

```bash
$ curl -i -X DELETE -H 'Content-Type: application/json' "http://localhost:3000/students/41301749?department=CS&code=101&section=1"
```

Also I put Makefile which can be quickly customized and adapted to your needs.

```bash
  make test-post
  make test-delete
```

After every insertion or removal, you can access current list by opening localhost:3000/students with appropriate query parameters.


License
--------
MIT
