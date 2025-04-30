/**
 * @param {Object|Array} obj
 * @return {boolean}
 */
var isEmpty = function(obj) {
    if (Array.isArray(obj) 
    && obj.length <= 0 
    || !Array.isArray(obj) 
    && Object.entries(obj).length <= 0) {
        return true
    } else {
        return false
    }
};