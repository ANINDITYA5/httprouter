package main

import (
	"github.com/sonmezonur/crud-go-redis/api"
)

const (
	apiPort = 3000
)

func main() {
	api.Start(apiPort)
}
