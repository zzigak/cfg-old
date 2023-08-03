import Optional

# Definition for a binary tree node.
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

root = None

class Solution:
    def invertTree(self, root: Optional[TreeNode]) -> Optional[TreeNode]:
        
        # until root is not none 
        if root == None:
            return None
        invertTree(root.left)
        invertTree(root.right)

        temp = root.left
        root.left = root.right
        root.right = temp

        return root
