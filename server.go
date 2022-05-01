package main

import (
	"net/http"
)

func main() {
	http.Handle("/", http.FileServer(http.Dir("files/")))
	http.ListenAndServe(":3141", nil)
}
