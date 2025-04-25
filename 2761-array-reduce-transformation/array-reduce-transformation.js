/**
 * @param {number[]} nums
 * @param {Function} fn
 * @param {number} init
 * @return {number}
 */
var reduce = function(nums, fn, init) {
    let reducer = init
        for (let i = 0; i < nums.length; i++) {
            reducer = fn(reducer, nums[i])
        }

    return reducer
};