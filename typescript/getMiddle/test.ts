export function getMiddle(s:string) {
  let l = s.length;
  let st = Math.floor(l/2)
  let ln = 0
  if ((l % 2) === 0) {
    ln = 2
    st--
  }
  else {
    ln = 1
  }
  //console.log(st,ln)
  return s.substring(st,st+ln)
}

console.log(getMiddle("test"))
console.log(getMiddle("testing"))