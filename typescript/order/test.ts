export function order(words:string):string
{
  let array : string[] = words.split(" ");
  let result = array.sort((a,b) => {
    var regex = new RegExp('(\d)')
    let i1 = regex.exec(a)?.groups
    console.log(i1)
    //let i2 = regex.exec(b)?.groups?[0]
    return 0
  })
  return ""
}

console.log(order("is2 Thi1s T4est 3a"));