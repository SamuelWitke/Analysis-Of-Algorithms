def instertion_sort(a)
	for j in 1...a.length # 2 elm till end
		key = a[j]
		i = j -1
		while i>=0 and a[i] > key
			a[i+1] = a[i]
			i -= 1
		end
		a[i+1] = key
	end
 	a
end
num = (File.readlines("numbers.txt").strip())
print instertion_sort(num)
