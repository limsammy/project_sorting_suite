require 'pry'

class MergeSort

  def sort(list)
    return list if list.size == 1
    middle = list.size / 2
  end

  def merge(left, right)
    sorted_list = []
    if left.empty?
      right
    elsif right.empty?
      left
    elsif left.first < right.first
      [left.first] + merge(left[1..left.size], right)
    else
      [right.first] + merge(left, right[1..right.size])
  end
  
end

test = MergeSort.new
test.sort([0, 3, 8, 5, 4, 9, 22])