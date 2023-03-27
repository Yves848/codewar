function solution(str){
   i = 0
   result = []
   while(i <= str.length-1) {
    s = str.substring(i,i+2)
    if (s.length < 2)
    {
      s = s + "_"
    }
    result.push(s)
    i+=2
   }
   return result
}

console.log(solution("abcdefg"))
