# Grain Language
https://grain-lang.org/
https://github.com/grain-lang/grain

### Running Grain Programs
You can run programs using the Grain CLI:

```
echo "print('Hello world')" > hello.gr
grain hello.gr
```

Alternatively, you can invoke the compiler directly:

```
grain compile hello.gr
```

and then to run the compiled program:

```
grain run hello.gr.wasm
```
