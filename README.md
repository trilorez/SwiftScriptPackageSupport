This demonstrates a single file Swift script that imports a Swift package and outputs JSON in a declarative manner, similar to how `Package.swift` files are used by Swift Package Manager, with support for code completion using [SourceKit-LSP](https://github.com/apple/sourcekit-lsp).

## Usage
First, build the `ExampleDataModel` package in the `ExampleDataModel` directory.
```sh
cd ExampleModel
swift build
```

After building the package, Swift scripts in this workspace that import `ExampleDataModel` should display code completion and navigation results when using a compatible text editor, such as VSCode with [this extension](https://marketplace.visualstudio.com/items?itemName=pvasek.sourcekit-lsp--dev-unofficial).

To interpret the `ExampleScript.swift` script and output JSON, run
```sh
swift $(< compile_flags.txt) ExampleScript.swift --encode
```

## Limitations
Both the code completion and script execution rely on the presence of `compile_flags.txt` at the root of the workspace. The package library must also be built as a dynamic library.
