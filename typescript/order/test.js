"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.order = void 0;
function order(words) {
    var array = words.split(" ");
    var result = array.sort(function (a, b) {
        var _a;
        var regex = new RegExp('(\d)');
        var i1 = (_a = regex.exec(a)) === null || _a === void 0 ? void 0 : _a.groups;
        console.log(i1);
        //let i2 = regex.exec(b)?.groups?[0]
        return 0;
    });
    return "";
}
exports.order = order;
console.log(order("is2 Thi1s T4est 3a"));
