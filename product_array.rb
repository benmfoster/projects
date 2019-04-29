# Good morning! Here's your coding interview problem for today.

# This problem was asked by Uber.

# Given an array of integers, return a new array such that each element at index i of the new array is the product of all the numbers in the original array except the one at i.

# For example, if our input was [1, 2, 3, 4, 5], the expected output would be [120, 60, 40, 30, 24]. If our input was [3, 2, 1], the expected output would be [2, 3, 6].

# Follow-up: what if you can't use division?

def product_array(arr)
    product_array = []
    product = 1
    arr.each do |n|
        product *= n
    end
    arr.each do |n|
        product_array << product / n
    end
    return product_array
end

def no_division(arr)
    product_array = []
    arr.each_with_index do |x, k|
        product = 1
        arr.each_with_index do |n, i|
            unless k == i
                product *= n   
            end
        end
        product_array << product
    end
    return product_array
end

p no_division([1, 2, 3, 4, 5])

p no_division([3, 2, 1])