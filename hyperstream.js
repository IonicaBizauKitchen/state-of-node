var hyperstream = require('hyperstream');
var fs = require('fs');

var hs = hyperstream({
    '#content': fs.createReadStream(__dirname + '/public/slides.html')
});
var rs = fs.createReadStream(__dirname + '/public/layout.html');
rs.pipe(hs).pipe(process.stdout);