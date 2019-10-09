const fs = require('fs');

const projectDirs = [__dirname, __dirname + '/lskjs'];


function isProject(file, projectDir) {
  if (file === 'node_modules') return false;
  if (file[0] === '_') return false;
  if (file[0] === '.') return false;
  return fs.lstatSync([projectDir, file].join('/')).isDirectory();
}

const dirs = [];
projectDirs.forEach((projectDir) => {
  const files = fs.readdirSync(projectDir);

  files.forEach(file => {
    if (!isProject(file, projectDir)) return;
    dirs.push({
      name: file,
      dir: [projectDir, file].join('/'),
    });
  });

}, []);


const json = JSON.stringify(dirs.map(({dir, name}) => ({
		"name": name,
		"rootPath": dir,
		"paths": [],
		"group": ""
})), null, 4)


fs.writeFileSync(__dirname + '/projects.json', json);
