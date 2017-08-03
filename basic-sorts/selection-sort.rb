def selection_sort(a)
	n = a.length - 1
	n.times do |i|
  		index_min = i
  		((i + 1)..n).each do |j|
    		index_min = j if a[j] < a[index_min]
 		end
  		a[i], a[index_min] = a[index_min], a[i] if index_min != i
	end
	a
end

arr = [2,4,1,5,2,4,2,4,3,2,1]
puts selection_sort(arr).join(' ')

