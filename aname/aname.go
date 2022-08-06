package main

import (
	"fmt"
	"log"
	"os"
	"strings"
)

func main() {
	path := ".."
	dir, err := os.ReadDir(path)
	if err != nil {
		log.Fatal(err)
	}

	fmt.Println("Printing files/directories with the letter 'a' in it...")
	for _, file := range dir {
		if strings.Contains(file.Name(), "a") {
			fmt.Println(file.Name())
		}
	}
}
