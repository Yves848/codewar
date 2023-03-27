"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.isValidWalk = void 0;
var pos = /** @class */ (function () {
    function pos() {
    }
    pos.x = 0;
    pos.y = 0;
    return pos;
}());
function isValidWalk(walk) {
    if (walk.length != 10) {
        return false;
    }
    walk.forEach(function (w) {
        switch (w) {
            case 'n':
                pos.y++;
                break;
            case 's':
                pos.y--;
                break;
            case 'w':
                pos.x++;
                break;
            case 'e':
                pos.x--;
                break;
            default:
                break;
        }
    });
    return (pos.x == 0 && pos.y == 0);
}
exports.isValidWalk = isValidWalk;
console.log(isValidWalk([
    'n', 's', 'n', 's',
    'n', 's', 'n', 's',
    'n', 's'
]));
