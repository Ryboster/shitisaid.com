## Naming Conventions

#### Python:
- **camelCase**: publicVariables, _privateVariables, parameters, arguments
- **PascalCase**: ClassNames, MethodNames, FunctionNames
- **lower_snake_case**: file_names, 
- **UPPER_SNAKE_CASE**: CONSTANT_NAMES
- **isCamelCase**: booleans (e.g. hasEnoughRam, isServerRunning)

#### JavaScript:
- **PascalCase**: ClassNames, FunctionNames,
- **camelCase**: publicVariables, _privateVariables
- **kebab-case**: file-names.js
- **isCamelCase**: booleans (e.g. hasEnoughRam, isServerRunning)

#### HTML / CSS:
- **UPPERCASE**: CLASSNAMES, IDNAMES
- **lowercase**: tagnames, properties, jinja2blocknames (`{% block blockname %}`)

#### PostgreSQL
- **snake_case**: table_names, index_names, constraint_names, function_names, schema_names
- **UPPERCASE**: SQL KEYWORDS (e.g. SELECT, FROM), TYPES

#### Style Guidelines
* Use single-line comments when possible.
* Use tabs for indentation.
* Align code consistently for readability (consistent/even separations between parts of code).
* Place comments on the line above the code you’re commenting on.
* Add a space between the comment operator and the text, e.g., `# this is a good example`, `#this isn't`.
* Classes and methods should always include comments, 
* Write self documenting code to reduce the need for comments; e.g. `class Calculator`, `def AddNumberToNumber`

#### Things to Include
* Add units within variable names, e.g., `delaySeconds`, `delayMinutes`, `delayHours`, etc.
* Boolean variables should start with "is" or "has," e.g., `bool isThisExample`, `bool hasThisHelped`.
* Use positive boolean versions instead of negative, e.g., use `bool isThisExample` vs. `bool isNotExample`.

#### Things to Avoid
* Abbreviated names.
* Single-letter names.
* Adding types in names.


## SCRUM Conventions


