import UIKit

var str = "Hello, playground"

///
/// Merge Sorted Arrays
///

let myArray = [3, 4, 6, 10, 11, 15]
let alicesArray = [1, 5, 8, 12, 14, 19]

// Brute Force
func mergeSortedArray(_ myArray: [Int], _ alicesArray: [Int]) -> [Int] {
    return (myArray + alicesArray).sorted()
}

// Solution
func mergeArrays(_ myArray: [Int], _ aliceArray: [Int]) -> [Int] {
    
    var mergedArray = Array(repeating: 0, count: myArray.count + aliceArray.count)
    
    var currentIndexAlices = 0
    var currentIndexMine = 0
    var currentIndexMerged = 0
    
    
    while currentIndexMerged < mergedArray.count {
        let isMyArrayExhausted = currentIndexMine >= myArray.count
        let isAliceArrayExhausted = currentIndexAlices >= aliceArray.count
        
        
        if !isMyArrayExhausted && (isAliceArrayExhausted || myArray[currentIndexMine] < aliceArray[currentIndexAlices]) {
            mergedArray[currentIndexMerged] = myArray[currentIndexMine]
            currentIndexMine += 1
        } else {
            mergedArray[currentIndexMerged] = aliceArray[currentIndexAlices]
            currentIndexAlices += 1
        }
        
        
        currentIndexMerged += 1
    }
        
    return mergedArray
}

mergeArrays(myArray, alicesArray)
