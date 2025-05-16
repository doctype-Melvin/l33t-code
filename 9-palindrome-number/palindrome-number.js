/**
 * @param {number} x
 * @return {boolean}
 */
var isPalindrome = function(x) {
    let map = new Map()

    map.set(x, x)
    let reverse = Number(x.toString().split('').reverse().join(''))

    return map.has(reverse)
};