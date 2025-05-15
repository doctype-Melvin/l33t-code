/**
 * @param {Array} arr
 * @param {number} depth
 * @return {Array}
 */
var flat = function (arr, n) {
    if (n === 0 || arr.every(item => !Array.isArray(item))) return arr

    const result = []
    for ( let i = 0; i < arr.length; i++ ) {
        if (Array.isArray(arr[i]) && n > 0) {
            result.push(...flat(arr[i], n-1))
        } else {
            result.push(arr[i])
        }
    }
        return result
};