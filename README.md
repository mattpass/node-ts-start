# Node TS Start

**Ideal for API responses, eg api.domain.com**

This repo provides a boilerplate-fresh starting point for a solely Node and TypeScript based project. This boilerplate is ideal as a backend service only, for instance, as an API to provide responses to a frontend.

Upon building, the `index.ts` file is compiled to the `dist` dir and it is `dist/index.js` that is ran by `node` or `nodemon`.

## Flexibility:

This repo uses `NodeNext` as the module type so that you can use Common JS modules or ES6 import/export side-by-side. A reminder of how these both look in code:

| Syntax    | Example                     |
| --------- | --------------------------- |
| CommonJS: | `const fs = require('fs');` |
| ES6       | `import fs from 'fs';`      |

The more common and modern approach these days is ES6, but is great that both can be supported in this repo.

Due to using `NodeNext` as the module type, you will need to include `.js` file extensions when importing local files as modules, but this is not required when importing modules from `node_modules`. Examples to clarify this:

| Type         | Example                               |
| ------------ | ------------------------------------- |
| local files  | `const hello = require('hello.js')`   |
| node_modules | `const express = require('express');` |

## Install:

This repo was created via:

```bash
git clone git@github:mattpass/node-ts-start node-ts-start
cd node-ts-start
chmod + x setup.sh
./setup.sh
```

Once it's installed, you can then use as per info below.

## Usage:

It's recommended that you git clone this repo and then use VS Code, due it having great support for TypeScript, including Intellisense for the language, which is helped along by types we add (eg @types/express). It all vastly improves the dev experience more than other IDE's do.

Run as per your use case:

```bash
# Compile
npm run build

# Compile and start server
npm run start

# Compile and start server in watch mode
npm run dev
```

## References:

- https://www.youtube.com/watch?v=H91aqUHn8sE (2023)
- https://www.youtube.com/watch?v=qy8PxD3alWw (2022)
- https://www.youtube.com/watch?v=1UcLoOD1lRM (2019)
