const fs = require("fs");
const path = require("path");
const os = require("os");

const homeDirectory = os.homedir();

function copyFolderSync(source, destination) {
  if (!fs.existsSync(destination)) {
    fs.mkdirSync(destination, { recursive: true });
  }

  const entries = fs.readdirSync(source, { withFileTypes: true });

  for (let entry of entries) {
    const sourcePath = path.join(source, entry.name);
    const destinationPath = path.join(destination, entry.name);

    entry.isDirectory()
      ? copyFolderSync(sourcePath, destinationPath)
      : fs.copyFileSync(sourcePath, destinationPath);
  }
}

const sourceFolder = "scripts";
const destinationFolder = homeDirectory + "/my_scripts";

copyFolderSync(sourceFolder, destinationFolder);
console.log("Successfully executed.");
