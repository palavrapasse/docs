# conventions

This file describes all of the coding conventions we adopted in order to make our Go codebases consistent, friendly to read and easy to maintain. Remembering all of them is hard and it is the purpose of linting tools to verify during development, not humans. As such, in [linting_rules.yaml](src/linting_rules.yaml) file you can find the mentioned conventions as linting rules for [golangci-lint](https://golangci-lint.run).

---

**For naming [1] [2] [4]**:

- Be consistent (easy to guess): Receiver names should be consistent across a type's methods;
- Use short names: Reduce common variables and parameters (when types are descriptive) to one, two or three letters (e.g., `i` - `index`, `k` - `key`, `r` - `reader`);
- Avoid redundant names, given their context (e.g., `count` instead of `runeCount` inside a function named `RuneCount`);
- Use PascalCase for functions, types, interfaces (e.g., PrimeSearch);
- Use camelCase for local variables, parameters (e.g., sortedList);
- Use CAPITALCASE for acronyms (e.g., HTTP, ID);
- Use lowercase for packages and avoid using plural form;
- Use Error as a suffix when defining error types (e.g., CredentialsError);
- Use err as a prefix when declaring error variables (e.g., errCredentials);
- Use _ as a prefix when declaring top-level vars and consts (e.g., _defaultPort);
- Don't use snake_case;
- Don't use util, common, shared or lib for package name.

**For style/code organization [2] [4]**:

- Group similar and related declarations (e.g. `const (a = 1 b = 2)`);
- Group imports by standard library and everything else;
- Sort functions in rough call order;
- Group functions in a file by receiver;
- Reduce nesting: handle error cases/special conditions first and return early or continue the loop;
- Avoid unnecessary else conditions;
- Use field names to initialize structs and omit zero value fields in structs;
- Module name must follow the following pattern: `github.com/<org>/<repo>/<module>`

**For package/project layout [3]**

- Organize by responsibility, not collection: Avoid models, utils, etc;
- Separate files by responsibility (e.g., http.go, header.go, cookie.go);
- Top-level package documentation should be written in the `doc.go` file.
- `/cmd/` directory describes the main executable code for the Go progam. There maybe multiple main executables, and as such they must live inside the appropriate folder (`/cmd/migration/migration.go`);
- `/internal/` directory describes internal, non-shared code (i.e., private application code);
- `/pkg/` directory describes shared code externally that other applications can use;
- `/configs/` directory describes configuration files templates;
- `/deployments/` directory describes deployment configuration files;
- `/scripts/` directory describes internal scripts used to automate the application (e.g., build, test, analyse);
- `/third_party/` directory describes external helper tools binaries, files and forked code;
- `/api/` directory may exist to describe the HTTP API exposed by the package (e.g., swagger files);
- Directories following /cmd/ should match the name of the executable;
- Directories inside /internal/ can be named as /pkg and /app to separate application and library code.

**For Code safety [4]**:

- Use defer to clean up resources such as files and locks;
- Don't Panic: the function returns an error and allow the caller to handle it.


## Sources

[1] https://go.dev/talks/2014/names.slide

[2] https://go.dev/doc/effective_go

[3] https://rakyll.org/style-packages/

[4] https://github.com/uber-go/guide/blob/master/style.md