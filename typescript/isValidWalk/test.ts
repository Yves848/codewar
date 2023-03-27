class pos {
  public static x = 0;
  public static y = 0;
}

export function isValidWalk(walk: string[]) {
  if (walk.length != 10) {
    return false
  }
  pos.x = 0;
  pos.y = 0;
  walk.forEach(w => {
    switch (w) {
      case 'n':
        pos.y ++;
        break;
      case 's':
        pos.y --;
        break;
      case 'w':
        pos.x ++;
        break;
      case 'e':
        pos.x --;
        break;
      default:
        break;
    }
  })
  return (pos.x == 0 && pos.y == 0)
}

console.log(isValidWalk([
  'n', 's', 'n', 's',
  'n', 's', 'n', 's',
  'n', 's'
]))