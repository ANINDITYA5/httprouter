#example post request
test-post:
	curl -i -X POST -H 'Content-Type: application/json' -d '{"id":"21300749"}' "http://localhost:3000/students?department=CS&code=101&section=1"

#example delete request
test-delete:
	curl -i -X DELETE -H 'Content-Type: application/json' "http://localhost:3000/students/21300749?department=CS&code=101&section=1"
