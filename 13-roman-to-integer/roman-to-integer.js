/**
 * @param {string} s
 * @return {number}
 */
var romanToInt = function(s) {
    let dict = new Map()
    dict.set('I', 1)
    .set('V', 5)
    .set('X', 10)
    .set('L', 50)
    .set('C', 100)
    .set('D', 500)
    .set('M', 1000)

    if (s.length === 0) return 0
    let arr = s.split('')
    let sum = 0

    for (let i = arr.length-1 ; i >= 0 ; i--) {

        let current = dict.get(arr[i])
        let next = dict.get(arr[i-1])
        
        if (next < current) { 
            sum += (current-next)
            i--
         } else {
            sum += current
         }
    }

    return sum
};