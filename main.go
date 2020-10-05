package main

import (
	"net/http"
	"os"
	"log"
)

func index(w http.ResponseWriter, r *http.Request) {
	http.ServeFile(w, r, "html/index.html")
	log.Println("index.html")
}

func main() {
	logFile, err := os.OpenFile("website.log", os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
	if err != nil {
		panic(err)
	}

	log.SetOutput(logFile)

	http.HandleFunc("/", index)

	http.ListenAndServe(":80", nil)
}
