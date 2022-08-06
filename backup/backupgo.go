package main

import (
	"bufio"
	"errors"
	"fmt"
	"io"
	"log"
	"os"
)

func usage() {
	err := errors.New("USAGE: go run backupgo.go <directory-path-to-backup>")
	log.Fatal(err)
}

func error_exit(msg string) {
	err := errors.New(msg)
	log.Fatal(err)
}

func main() {
	if len(os.Args) < 2 {
		usage()
	}
	// for input
	reader := bufio.NewReader(os.Stdin)

	// first argument is the directory
	source_dir := os.Args[1]
	fmt.Printf("Backing up %s in process...", source_dir)

	target_dir, err := os.ReadDir(source_dir)
	if err != nil {
		log.Fatal(err)
	}

	err = os.Mkdir("backedup", 0731)
	if err != nil {
		log.Fatal(err)
	}

	for _, file := range target_dir {
		if !file.IsDir() {
			for {
				fmt.Printf("Do you want %s to get backed up? [y/n]:", file.Name())
				user_input, err := reader.ReadString('\n')
				if err != nil {
					log.Fatal(err)
				}
				if user_input == "y" || user_input == "Y" {
					dst, err := os.Create("/backedup/" + file.Name())
					if err != nil {
						log.Fatal(err)
					}
					src, err := os.Open(file.Name())
					if err != nil {
						log.Fatal(err)
					}
					file_info, _ := file.Info()
					file_size := file_info.Size()

					n, err := io.Copy(dst, src)

					if n < file_size {
						error_exit("something went wrong copying the file...")
					}

					continue
				} else if user_input == "n" || user_input == "N" {
					fmt.Println("Next file")
					continue
				}
			}
		}
	}
}
