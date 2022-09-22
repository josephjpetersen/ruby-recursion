def merge_sort(array)
  if array.length < 2
    array
  else
    left = merge_sort(array[0...(array.length / 2)])
    right = merge_sort(array[(array.length / 2)...array.length])
    merge(left, right)
  end
end

def merge(left, right, sorted_array = [])
  (left.length + right.length).times do
    if left.empty?
      sorted_array << right.shift
    elsif right.empty?
      sorted_array << left.shift
    else
      comparison = left <=> right
      if comparison == -1
        sorted_array << left.shift
      elsif comparison == 1
        sorted_array << right.shift
      else
        sorted_array << right.shift
        sorted_array << left.shift
      end
    end
  end
  sorted_array
end

test_array = [3, 66, 7, 0, 9, 3, 2, 45, 23, 77, 101, 32, 77, 93, 1]

p merge_sort(test_array)