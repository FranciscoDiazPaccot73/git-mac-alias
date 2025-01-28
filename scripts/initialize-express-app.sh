#!/bin/bash

package_json_file="package.json"
package_json_content='{
  "name": "express-app",
  "version": "1.0.0",
  "description": "A simple Express app",
  "main": "index.js",
  "scripts": {
    "start": "node index.js",
    "dev": "node index.js"
  },
  "dependencies": {
    "express": "^4.17.1"
  }
}'
index_js_file="index.js"
index_js_content="const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.listen(port, () => {
  console.log(\`Server running on http://localhost:\${port}\`);
});"

if [ $# -lt 1 ]; then
    echo "Usage: $0 <express app name>"
    exit 1
fi

mkdir -p "$1"

echo "$package_json_content" > "$package_json_file"
echo "$index_js_content" > "$index_js_file"

echo "Simple express app '$1' successfully created! Run 'cd $1' and 'npm install' to install dependencies and 'npm run dev' to start the server in the port 3000."
