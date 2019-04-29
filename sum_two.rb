# Good morning! Here's your coding interview problem for today.

# This problem was recently asked by Google.

# Given a list of numbers and a number k, return whether any two numbers from the list add up to k.

# For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.

# Bonus: Can you do this in one pass?

def sum_two (arr, k)
    arr.each_with_index do |n1, i1|
        arr.each_with_index do |n2, i2|
            if i1 != i2
                if n1 + n2 == k
                    return [n1, n2]
                end
            end
        end
    end
    false
end

p sum_two([10, 15, 3, 7], 2)