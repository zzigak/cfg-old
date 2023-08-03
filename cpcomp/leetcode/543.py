# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def diameterOfBinaryTree(self, root: Optional[TreeNode]) -> int:
        self.max_diameter = 0
         


        def depth(self, node: Optional[TreeNode]) -> int:
            left = self.depth(node.left) if node.left else 0
            right = self.depth(node.right) if node.right else 0

            # if diameter greater than current max
            if left + right > self.max_diameter:
                self.max_diameter

            return max(left,right) + 1
        
       
        self.depth(root)
        return self.max_diameter
