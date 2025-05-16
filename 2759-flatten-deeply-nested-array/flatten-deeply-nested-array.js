/**
 * @param {Array} arr
 * @param {number} depth
 * @return {Array}
 */
var flat = function (arr, n) {
    if (n === 0 || arr.forEach(item => !Array.isArray(item))) return arr

    let result = []
    for (let i = 0 ; i < arr.length ; i++) {
        if (!Array.isArray(arr[i])) {
            result.push(arr[i])
        } else {
            result.push(...flat(arr[i], n-1))
        }
    }

    return result
};