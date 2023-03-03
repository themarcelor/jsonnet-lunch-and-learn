package utils

import (
	"fmt"
	"io/ioutil"
	"os"
)

func ReadBytesFromFile(fileName string) []byte {
	theFile, err := os.Open(fileName)
	if err != nil {
		fmt.Printf("Could not read file: %v\n", err)
		panic(err)
	}
	defer theFile.Close()
	theBytes, _ := ioutil.ReadAll(theFile)

	return theBytes
}
