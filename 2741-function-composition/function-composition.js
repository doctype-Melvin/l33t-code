/**
 * @param {Function[]} functions
 * @return {Function}
 */
var compose = function(functions) {
    
    return function(x) {
        let t = functions.length
        let result = x
        
        function recurse(n) {
            if (n === 0) {
                return result
            }
            else 
            {
                result = functions[n-1](result)
                return recurse(n-1)
            }
        }
       return recurse(t)
    }
};

/**
 * const fn = compose([x => x + 1, x => 2 * x])
 * fn(4) // 9
 */