"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.getMiddle = void 0;
function getMiddle(s) {
    var l = s.length;
    var st = Math.floor(l / 2);
    var ln = 0;
    if ((l % 2) === 0) {
        ln = 2;
        st--;
    }
    else {
        ln = 1;
    }
    console.log(st, ln);
    return s.substring(st, st + ln);
}
exports.getMiddle = getMiddle;
console.log(getMiddle("test"));
console.log(getMiddle("testing"));
