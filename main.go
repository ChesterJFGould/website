package main

import "net/http"

func index(w http.ResponseWriter, r *http.Request) {
	http.ServeFile(w, r, "html/index.html")	
}

func main() {
	http.HandleFunc("/", index)

	http.ListenAndServe(":3141", nil)
}
