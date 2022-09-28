package main

import (
	"bufio"
	"fmt"
	"log"
	"net"
)

func main() {
	conn, err := net.Dial("tcp", "localhost:12345")
	if err != nil {
		log.Fatal(err)
	}
	fmt.Fprintf(conn, "test\n")
	status, err := bufio.NewReader(conn).ReadString('\n')
	fmt.Println(status)
}
