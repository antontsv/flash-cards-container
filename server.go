package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
	"strconv"
)

func main() {

	fs := http.FileServer(http.Dir("static"))
	http.Handle("/", fs)

	portStr := os.Getenv("FLASH_CARDS_SERVER_PORT")
	port, err := strconv.Atoi(portStr)
	if err != nil || port < 0 || port > 65535 {
		port = 3131
		log.Printf("Will use default port %d\n", port)
	}

	log.Printf("Starting server on port %d...\n", port)
	err = http.ListenAndServe(fmt.Sprintf(":%d", port), nil)
	if err != nil {
		log.Fatal(err)
	}

}
