"""
283. Move Zeroes
	
	Given an integer array nums, move all 0's to the end of it while maintaining
	the relative order of the non-zero elements.

	Note that you must do this in-place without making a copy of the array.

	---

	Example 1:

	Input:	nums = [0, 1, 0, 3, 12]
	Output: [1, 3, 12, 0, 0]

	---

	Example 2:

	Input:	nums = [0]
	Output: [0]
"""

class Solution:
	def moveZeroes(self, nums: list) -> None:
		n = len(nums)
		current = 0
		search = 0

		while search < n:
			if nums[search] != 0:
				tmp = nums[current]
				nums[current] = nums[search]
				nums[search] = tmp
				current += 1
			search += 1

test = Solution()
print(test.moveZeroes([0, 1, 0, 3, 12]))
print(test.moveZeroes([0]))