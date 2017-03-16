require 'pry'

class MergeSort

  def sort(list)
    if list.size <= 1
      list
    else
      mid = list.size / 2
      left = sort(list[0..mid - 1])
      right = sort(list[mid..list.size])
      merge(left, right)
    end
  end

  def merge(left, right)
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

  def output(list)
    puts "Sorted list (merge): #{sort(list)}"
  end
end