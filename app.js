/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var targetIndices = function (nums, target) {
    let less = 0;
    let equal = 0;
    for (const element of nums) {
        if (element < target) {
            less++;
        } else if (element === target) {
            equal++;
        }
    }

    const result = [];
    for (let index = less; index < less + equal; index++) {
        result.push(index);
    }
    return result;
};

console.log(targetIndices([1, 2, 5, 2, 3], 2)); // [1,2]
console.log(targetIndices([1, 2, 5, 2, 3], 3)); // [3]
console.log(targetIndices([1, 2, 5, 2, 3], 5)); // [4]
