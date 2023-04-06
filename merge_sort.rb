# frozen_string_literal: true

# if the elements in the array are less than two
# return the array
# else
# sort left half of elements
# sort right half of elements
# merge sorted halves

def merge_sort(array)
  return array if array.length <= 1

  left = array[0..(array.length / 2) - 1]
  right = array[(array.length / 2)..]

  left = merge_sort(left)
  right = merge_sort(right)

  merge(left, right)
end

def merge(left, right)
  result = []
  while left.length > 0 && right.length > 0
    if left.first <= right.first
      result << left.shift
    else
      result << right.shift
    end
  end
  while left.length > 0
    result << left.shift
  end
  while right.length > 0
    result << right.shift
  end

  result
end

p merge_sort([5, 2, 1, 3, 6, 4])
