const fs = require('fs');
const glob = require("glob");
const replace = require("replace");
const ghostConfig = require("./config.development.json");


// fix the URL in links so that localhost does not show anymore
function urlReplace(){
  glob("static/**/*", null, function (er, files) {
    replace({
      regex: ghostConfig.url,
      replacement: ghostConfig.staticUrl,
      paths: files,
      recursive: false,
      silent: true,
    });
  })
}

// fix the tag folder: for some reason, Busters generates tag pages with the tag name
// and no html extension. This script put each tag inside a folder that has the tag name
// and move the tag file inside, renamed as index.html
function fixTagPages(){
  fs.readdirSync("static/tag/").forEach(function(file){
    console.log(file);
  })
}


//urlReplace();

fixTagPages();
