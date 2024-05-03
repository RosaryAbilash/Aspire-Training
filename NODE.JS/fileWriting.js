var fs = require('fs');

fs.writeFile('WrittenFile.txt', 'This Content is Written by Node JS!', function (err) {
  if (err) throw err;
  console.log('Saved!');
});