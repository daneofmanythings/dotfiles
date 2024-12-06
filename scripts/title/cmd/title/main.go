package main

import (
	"flag"
	"log"
	"os"
	"strings"

	"github.com/daneofmanythings/title"
	"github.com/daneofmanythings/title/internal"
)

func main() {
	flag.Parse()
	args := flag.Args()

	var s string
	var err error

	// TODO: add language flag

	if len(args) > 0 {
		s = strings.Join(args, " ")
	}
	if s == "" {
		s, err = internal.ReadLine(os.Stdin)
	}
	if err != nil {
		log.Print(err)
		return
	}

	title.Titleify(s)
}
