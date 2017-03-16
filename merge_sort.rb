require 'pry'

class MergeSort

  def sort(list)
    swapped = true
    sorted_list = []

    slice_count = list.size.to_i
    chunked_list = list.each_slice(slice_count).to_a.each{ |element| element.fill nil, slice_count, 0 }.transpose.map(&:compact)

    while swapped do
      swapped = false

      (slice_count-1).times do |i|
        if chunked_list[i][0] > chunked_list[i+1][0]
          chunked_list[i], chunked_list[i+1] = chunked_list[i+1], chunked_list[i]
          swapped = true
        end
      end
      break if !swapped
    end

    (slice_count-1).times do |i|
      sorted_list.push(chunked_list[i][0])
    end

    puts "Sorted list (merge): #{sorted_list}"
  end
end