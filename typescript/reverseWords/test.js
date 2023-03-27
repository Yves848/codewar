"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.reverseWords = void 0;
function reverseWords(str) {
    var result = '';
    var inv = [];
    str.split(' ').forEach(function (word) {
        var res = '';
        word.split('').forEach(function (x) {
            res = x + res;
        });
        inv.push(res);
    });
    //console.log(inv);
    result = inv.join(' ');
    return result;
}
exports.reverseWords = reverseWords;
console.log(reverseWords('The quick brown fox jumps over the lazy dog.'));
