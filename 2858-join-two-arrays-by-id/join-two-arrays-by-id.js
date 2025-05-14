/**
 * @param {Array} arr1
 * @param {Array} arr2
 * @return {Array}
 */
var join = function(arr1, arr2) {
    let cat = [...arr1, ...arr2]
    let result = {}

    cat.forEach(item => {
        // check for each of the items if 
        // their id is in the result object
        let id = item.id
        if (!result[id]) {
            result[id] = {...item}
        } else {
            result[id] = {...result[id], ...item}
        }
    })

    return Object.values(result)
};