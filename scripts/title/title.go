package title

import (
	"bytes"
	"fmt"

	"golang.org/x/text/cases"
	"golang.org/x/text/language"
)

func titleify(as string, b *bytes.Buffer) error {
	t := cases.Title(language.English)
	_, err := b.WriteString(t.String(as))
	return err // always nil. pretending it isn't
}

func Titleify(s string) {
	var b bytes.Buffer

	err := titleify(s, &b)
	if err != nil { // if there is an error, just print the input back out
		fmt.Printf("%v\n", s)
	}

	fmt.Printf("%v\n", b.String())
}
