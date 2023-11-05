package main

import (
	"fmt"
	"net/http"
)

func handlerMain(w http.ResponseWriter, r *http.Request) {
	// write to http rsp writer
	fmt.Fprintf(w, "Hello World")
}

func main() {
	http.HandleFunc("/", handlerMain)
	http.ListenAndServe(":80", nil)
}
