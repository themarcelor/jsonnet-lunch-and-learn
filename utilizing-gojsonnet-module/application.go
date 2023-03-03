package main

import (
	"fmt"

	"github.com/themarcelor/jsonnet-lunch-and-learn/utils"

	"github.com/google/go-jsonnet"
)

func main() {
	vm := jsonnet.MakeVM()

	vm.ExtCode("testing", "false")

	jsonnetFile := utils.ReadBytesFromFile("what-is-jsonnet/hello-world.jsonnet")
	
	jsonStr, err := vm.EvaluateAnonymousSnippet("", string(jsonnetFile))
	if err != nil {
		fmt.Println("Jsonnet failure: ", err)
		return
	}

	fmt.Printf("result: %v\n", jsonStr)

	/*
	jsonBytes := []byte(jsonStr)
	err = os.WriteFile("./out/result.json", jsonBytes, 0777)
	if err != nil {
		fmt.Println"Could not write result file: ", err)
		return err
	}*/
}
