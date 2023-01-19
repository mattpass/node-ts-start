echo "* Initializing and customizing NPM"
npm init -y > /dev/null
sed -i '6 i \ \ "type": "module",' package.json
sed -i '8 i \ \ \ \ "build": "rimraf dist && npx tsc",\
\ \ \ \ "dev": "clear && concurrently \\"npx tsc -w\\" \\"nodemon dist/index.js\\"",\
\ \ \ \ "start": "clear && node dist/index.js",\
\ \ \ \ "predev": "npm run build",\
\ \ \ \ "prestart": "npm run build",' package.json
echo "* Dev env: (adding: types)"
npm i -D @types/node @types/express @types/cors @types/request @typescript-eslint/eslint-plugin > /dev/null
echo "* Dev env: (adding: modules)"
npm i -D nodemon typescript eslint rimraf concurrently > /dev/null
echo "* Prod env: (adding modules)"
npm i express cors request > /dev/null
echo "* TypeScript: (initalizing, customizing)"
npx tsc --init --target ES2016 --module NodeNext --moduleResolution NodeNext --rootDir ./src --outDir ./dist --sourceMap true > /dev/null
sed -i 's/nodenext/NodeNext/g' tsconfig.json
echo "* Dev env: ESLint: (adding modules)"
npm i -D eslint eslint-config-standard-with-typescript eslint-plugin-import eslint-plugin-n eslint-plugin-promise > /dev/null
echo "* Dev env: Prettier: (adding modules)"
npm i -D prettier eslint-plugin-prettier eslint-config-prettier > /dev/null
