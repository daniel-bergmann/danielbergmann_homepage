package main

import (
	"fmt"
	"net/http"
)

func main() {
    fs := http.FileServer(http.Dir("./static"))
    http.Handle("/", fs)

    port := ":8003"
    fmt.Printf("Serving on http://localhost%s\n", port)
    if err := http.ListenAndServe(port, nil); err != nil {
        fmt.Println("Error starting server:", err)
    }
}
