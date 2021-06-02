/**
 * @param {number[]} nums
 * @return {number}
 */
var removeDuplicates = function(nums) {
    var prevNumber = Infinity;
    for (var i = 0; i < nums.length; i++) {
        if (nums[i] === prevNumber) {
            nums.splice(i, 1);
            i--;
        } else {
            prevNumber = nums[i]
        }
    }
    return nums.length
};
