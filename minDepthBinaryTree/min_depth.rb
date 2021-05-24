# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def min_depth(root)
    if !root
       return 0 
    end
    
    if root.left == nil && root.right == nil
        return 1
    end
    if root.left == nil
       return 1 + min_depth(root.right) 
    end
    if root.right == nil
       return 1 + min_depth(root.left) 
    end
    
    return 1 + [min_depth(root.right), min_depth(root.left)].min
end