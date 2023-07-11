# What if we take away the sorted list
# Two Sum (Medium)
# Given an array of integers numbers, find two numbers such that they add up to a specific target number. 
# Let these two numbers be numbers[index1] and numbers[index2] where 1 <= index1 < index2 <= numbers.length.
# Return the indices of the two numbers, index1 and index2,  as an integer array [index1, index2] of length 2.
# If a solution does not exist, return [-1, -1].
# The tests are generated such that there is exactly one or no solution. You may not use the same element twice.
# can you do it in linear time O(n)?
# Example 1:
# Input: numbers = [15,7,11,2], target = 9
# Output: [1,3]
# Explanation: The sum of 7 and 2 is 9. Therefore, index1 = 1, index2 = 3. We return [1, 3].
# Example 2:
# Input: numbers = [2,3,4], target = 6
# Output: [0,2]
# Explanation: The sum of 2 and 4 is 6. Therefore index1 = 0, index2 = 2. We return [0, 2].
# Example 3:
# Input: numbers = [-1,0], target = -1
# Output: [0,1]
# Explanation: The sum of -1 and 0 is -1. Therefore index1 = 0, index2 = 1. We return [0, 1].
# Example 4:
# Input: numbers = [0,0,1,2,2,5], target = 8
# Output: [-1,-1]
# Explanation: There is no valid solution, so we return [-1, -1].


def hash(lists, target):
    dict = {}

    for index in range(len(lists)):
        dict.setdefault(lists[index], [target -lists[index], index])

    for keys in dict.keys():
        try:
            dict[dict[keys][0]]
            return [dict[keys][1], dict[dict[keys][0][1]]]
        except:
            pass
    return [-1, -1]

input = [23, 22, 10, 7, 2, ]
