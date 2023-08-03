import collections
def partition(llist, left, right):
    pivotValue = llist[right]
    #llist[pivotIndex], llist[right] = llist[right], llist[pivotIndex]
    storeIndex = left

    for exp in range(left,right-1):
        if llist[exp] <= pivotValue:
            llist[storeIndex], llist[exp] = llist[exp], llist[storeIndex] 
            storeIndex+=1
    llist[storeIndex], llist[right] = llist[right], llist[storeIndex] 

    return storeIndex





# CORECT

# Solution: QuickSelect
# Time Complexity:
#   - Best Case: O(n)
#   - Average Case: O(n)
#   - Worst Case: O(n^2)
# Extra Space Complexity: O(1)
class Solution:
    def partition(self, nums, left: int, right: int) -> int:
        pivot, fill = nums[right], left

        for i in range(left, right):
            if nums[i] <= pivot:
                nums[fill], nums[i] = nums[i], nums[fill]
                fill += 1

        nums[fill], nums[right] = nums[right], nums[fill]

        return fill

    def findKthLargest(self, nums, k: int) -> int:
        k = len(nums) - k
        left, right = 0, len(nums) - 1

        while left < right:
            pivot = self.partition(nums, left, right)

            if pivot < k:
                left = pivot + 1
            elif pivot > k:
                right = pivot - 1
            else:
                break

        return nums[k]






# PARTITION IS CORRECT
print(partition(arr,0,len(arr)-1))


