export function reverseWords(str: string): string {
  var result = ''
  var inv : string[] = [];
  str.split(' ').forEach(word => {
    var res = '';
    word.split('').forEach(x => {
      res = x + res;
    })
    inv.push(res);
  })
  //console.log(inv);
  result = inv.join(' ');
  return result;
  
} 

console.log(
  reverseWords('The quick brown fox jumps over the lazy dog.')
);