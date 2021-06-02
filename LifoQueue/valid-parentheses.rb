# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:
# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.

# @param {String} s
# @return {Boolean}
def is_valid(s)
    stack = []
    brackets = s.split("")
    for bracket in brackets
        if is_match(stack[-1], bracket)
            stack.pop
        else
            stack.push(bracket)
        end
    end
    stack.length == 0
end

def is_match(left, right)
    left == "(" && right == ")" || left == "[" && right == "]" || left == "{" && right == "}"
end