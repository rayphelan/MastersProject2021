# Go to WebAssembly 
https://github.com/golang/go/wiki/WebAssembly

Go program must be called:
```
main.go
```

Compile to WASM and execute with this:
```
GOOS=js GOARCH=wasm go run -exec="$(go env GOROOT)/misc/wasm/go_js_wasm_exec" .
```
