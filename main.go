package main

import (
	"fmt"
	"log"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello, Railway + Go 🚂")
}

func main() {
	http.HandleFunc("/", handler)
	log.Println("Running on port 8080")
	log.Fatal(http.ListenAndServe(":8080", nil))
}
