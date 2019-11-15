def merge_sort(arr)
  return arr if arr.size <= 1 #Base case
  mid = arr.size / 2
  left = arr[0...mid]
  right = arr[mid...arr.size]
  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted.concat(left).concat(right)
end

example = [4, 3, 9, 3, 1, 4, 6, 8]

puts "Example array: #{example}"
puts "Let's sort!"
puts "#{merge_sort(example)}"