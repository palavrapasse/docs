# linting-tools

This file keeps track of the decisions taken to choose the linting tools for Go codebases.

---

Linting tools allow developers to enforce their coding guidelines along the codebase during software development. We have defined a set of coding conventions and guidelines, so we must enforce them in all of our Go codebases. Taken this in consideration, after querying Google, using ChatGPT and digging GitHub, we found out:

- [go-lint](https://github.com/golang/lint): deprecated, but still used internally by Golang
- [go-vet](https://pkg.go.dev/cmd/vet): successor of go-lint, created and maintained by Go team. Simple, but only supports few linting rules. Does not provide a way to add new rules.
- [staticcheck](https://staticcheck.io/): recommend by Go team, has a huge list of available rules that match official Go coding conventions. Similar to Java checkstyle.
- [golangci-lint](https://github.com/golangci/golangci-lint): Not necessarily a linter tool, but rather a meta linter tool, since it runs several linters in parallel (staticcheck is one of them). Huge list of supported linter tools and extensive configuration support (YAML). A bazooka to kill an ant!

Unfortunately we couldn't find a way to validate codebases module layout/file names. We will have to open an exception and humanly analyse them.

## Decision

Although we entitle `golangci-lint` as a "bazooka to kill an ant", we will go forward with it as the linting tool for Go codebases. It's just so extra configurable, we simply can't miss to use it. The con of using it is having to deal with multiple linting tools analysing the codebase at the same time, leading to increase of CPU usage and Disk I/O.

Our conventions as linting rules, as well as the tool configuration, can be found in the [.golangci.yaml](src/.golangci.yaml) file.

## Usage

Using `golangci-lint` is as simple as:

```bash
golangci-lint run .
```

## Continuous Linting

For now we have a client-side check that runs `golangci-lint` before pushing new commits. If the codebase is found inconsistent per linting rules, the commits cannot be pushed and the codebase needs to be fixed. You can find the hook in [pre-push](src/git-hooks/pre-push).