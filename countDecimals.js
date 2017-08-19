
function countDecimals(x) {
  if (x % 1) {
    var s = String(x);
    return s.length - s.indexOf('.') - 1;
  }
  return 0;
}

module.exports = countDecimals;

