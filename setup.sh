echo "* Initializing and customizing NPM"
npm init -y > /dev/null
sed -i '6 i \ \ "type": "module",' package.json
sed -i '8 i \ \ \ \ "build": "rimraf dist && npx tsc",\
\ \ \ \ "dev": "clear && concurrently \\"npx tsc -w\\" \\"nodemon dist/index.js\\"",\
\ \ \ \ "start": "clear && node dist/index.js",\
\ \ \ \ "predev": "npm run build",\
\ \ \ \ "prestart": "npm run build",' package.json
echo "* Adding Node modules for dev"
npm i -D @types/node @types/express @types/cors @types/request > /dev/null
npm i -D nodemon typescript rimraf concurrently > /dev/null
echo "* Adding Nodule modules for prod"
npm i express cors request > /dev/null
echo "* Initializing and customizing TypeScript"
npx tsc --init --target ES2016 --module NodeNext --moduleResolution NodeNext --rootDir ./src --outDir ./dist --sourceMap true > /dev/null
sed -i 's/nodenext/NodeNext/g' tsconfig.json
