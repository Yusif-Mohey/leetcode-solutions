
var maxDepth = function (s) {
    let max = 0;
    let currentDepth = 0;

    for (let char of s) {
        if (char === '(') {
            currentDepth++;
            max = Math.max(max, currentDepth);
        } else if (char === ')') {
            currentDepth--;
        }
    }
    return max;
};

function runTests() {
    // Array of test cases from LeetCode form AI
    const testCases = [
        { input: "(1+(2*3)+((8)/4))+1", expected: 3 },
        { input: "(1)+((2))+(((3)))", expected: 3 },
        { input: "1+(2*3)/(2-1)", expected: 1 },
        { input: "1", expected: 0 }
    ];

    console.log("Running tests...\n");

    testCases.forEach((test, index) => {
        const result = maxDepth(test.input);
        const passed = result === test.expected;
        console.log(`Test ${index + 1}: ${passed ? '✅ PASS' : '❌ FAIL'}`);
        console.log(`Input:    "${test.input}"`);
        console.log(`Expected: ${test.expected}`);
        console.log(`Got:      ${result}\n`);
    });
}

runTests();