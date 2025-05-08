/**
 * @param {Function} fn
 * @return {Object}
 */
Array.prototype.groupBy = function(fn) {
    let result = {}
    this.forEach(item => {
        let current = fn(item)
        if (result[current]) {
            result[current].push(item)
        } else {
        result[current] = [item]
        }
    })

    return result
};

/**
 * [1,2,3].groupBy(String) // {"1":[1],"2":[2],"3":[3]}
 */