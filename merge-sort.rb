def merge_sort(array)
  if array.length == 1
    return array
  else
    return merge(merge_sort(array[..(array.length/2 - 1)]), merge_sort(array[(array.length/2)..]))
  end
end

def merge(left, right)
  ans = []
  left_idx = 0
  right_idx = 0
  while true do
    if left_idx == left.length && right_idx < right.length
      ans += right[right_idx..]
      right_idx = right.length

    elsif left_idx < left.length && right_idx == right.length
      ans += left[left_idx..]
      left_idx = left.length

    elsif left_idx == left.length && right_idx == right.length
      return ans

    elsif left[left_idx] <= right[right_idx]
      ans << left[left_idx]
      left_idx += 1

    elsif left[left_idx] > right[right_idx]
      ans << right[right_idx]
      right_idx += 1

    end
  end
end

p merge_sort([2, 1, 15, 9, 2, 6, 19, 22, 100])
