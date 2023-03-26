function isPangram(str){
  var char = "abcdefghijklmnopqrtuvwxyz"
  b = true
  i = 0
  while((i <= char.length) && b) {
    b = b && (str.toLowerCase().indexOf(char.slice(i,i+1)) != -1)
    i++
  }
  return b
}

console.log(isPangram("The quick brown fox jumps over the lazy dog."))
console.log(isPangram("This is not a pangram."))