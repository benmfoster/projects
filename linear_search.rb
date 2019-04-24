def linear_search(sorted_array, desired_item)
    # your code goes here!
    index = 0
    sorted_array.each do |n|
        if n == desired_item
            return index
        end
        index += 1
    end
    nil
  end
  
  p linear_search([2, 6, 10, 17, 18, 19, 29, 37, 72], 18)
  p linear_search([2, 6, 10, 17, 18, 19, 29, 37, 72], 6)
  p linear_search([2, 6, 10, 17, 18, 19, 29, 37, 72], 37)
  p linear_search([2, 6, 10, 17, 18, 19, 29, 37, 72], 9)