/**
 * @param {Function} fn
 * @return {Function}
 */
function memoize(fn) {
    //Used all the available hints for this :( 
        let cache = {}
    return function(...args) {
            const key = String(args)
            if (key in cache) {
                return cache[key]
            }
            else
            {
                let result = fn(...args)
                cache[key] = result
                return result
            }
        
        
    }
}


/** 
 * let callCount = 0;
 * const memoizedFn = memoize(function (a, b) {
 *	 callCount += 1;
 *   return a + b;
 * })
 * memoizedFn(2, 3) // 5
 * memoizedFn(2, 3) // 5
 * console.log(callCount) // 1 
 */