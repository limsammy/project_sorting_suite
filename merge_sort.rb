require 'pry'
require 'enumerator'

class MergeSort
  def sort(list)
    slice_count = list.size.to_i.floor
    chunked_list = list.each_slice(slice_count).to_a.each{ |element| element.fill nil, slice_count, 0 }.transpose.map(&:compact)
    
  end
end

merge = MergeSort.new
merge.sort([0, 3, 8, 5, 4, 9, 22])