
## Adopted Conventions 

For naming [1] [2] [3]:

- Be consistent (easy to guess): Receiver names should be consistent across a type's methods;
- Use short names: Reduce common variables and parameters (when types are descriptive) to one, two or three letters (e.g., ``i`` - ``index``, ``k`` - ``key``, ``r`` - ``reader``);
- Avoid redundant names, given their context (e.g., ``count`` instead of ``runeCount`` inside a function named ``RuneCount``);
- Use PascalCase for functions, types, interfaces (e.g., PrimeSearch);
- Use camelCase for local variables, parameters (e.g., sortedList);
- Use CAPITALCASE for acronyms (e.g., HTTP, ID);
- Use lowercase for packages and not use plural;
- Use Error as a suffix when defining error types (e.g., CredentialsError);
- Use err as a prefix when declaring error variables (e.g., errCredentials);
- Use _ as a prefix when declaring top-level vars and consts (e.g., _defaultPort);
- Don't use snake_case;
- Don't use util, common, shared or lib for package name.


For style/code organization [2] [3]:

- Group similar and related declarations (e.g. ``const (a = 1 b = 2)``);
- Group imports by standard library and everything else;
- Sort functions in rough call order;
- Group functions in a file by receiver;
- Reduce nesting: handle error cases/special conditions first and return early or continue the loop;
- Avoid unnecessary else conditions;
- Use field names to initialize structs and omit zero value fields in structs.


Guidelines [3]:

- Use defer to clean up resources such as files and locks;
- Don't Panic: the function returns an error and allow the caller to handle it.


## Sources

[1] https://go.dev/talks/2014/names.slide

[2] https://go.dev/doc/effective_go

[3] https://github.com/uber-go/guide/blob/master/style.md

