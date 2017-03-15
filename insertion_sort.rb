class InsertionSort
	def sort(list)
		sorted_list = [list[0]]
		list.delete_at(0)

		list.each do |i|
			index_counter = 0
			while index_counter < sorted_list.length
				if(i <= sorted_list[index_counter])
					sorted_list.insert(index_counter, i)
					break
				elsif(index_counter == sorted_list.length-1)
					sorted_list.insert(index_counter+1, i)
					break
				end
				index_counter += 1
			end
		end
		puts "Sorted list: #{sorted_list}"
	end
end


insertion = InsertionSort.new
insertion.sort([0, 3, 8, 5, 4, 9, 22])