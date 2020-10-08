package main

import (
	"net/http"
	"os"
	"log"
)

func main() {
	logFile, err := os.OpenFile("website.log", os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
	if err != nil {
		panic(err)
	}

	log.SetOutput(logFile)

	http.HandleFunc("/", index)
	http.HandleFunc("/favicon.ico", favicon)
	http.HandleFunc("/blog", blog)
	http.HandleFunc("/math", math)

	go http.ListenAndServe(":80", nil)

	err = http.ListenAndServeTLS(":443", "/etc/letsencrypt/live/chestergould.xyz/fullchain.pem",
		"/etc/letsencrypt/live/chestergould.xyz/privkey.pem", nil)

	if err != nil {
    		panic(err)
	}
}

func index(w http.ResponseWriter, r *http.Request) {
	http.ServeFile(w, r, "html/index.html")
}

func favicon(w http.ResponseWriter, r *http.Request) {
	http.ServeFile(w, r, "favicon.ico")
}


func blog(w http.ResponseWriter, r *http.Request) {
	http.ServeFile(w, r, "html/blog.html")
}

func math(w http.ResponseWriter, r *http.Request) {
	http.ServeFile(w, r, "html/math.html")
}
