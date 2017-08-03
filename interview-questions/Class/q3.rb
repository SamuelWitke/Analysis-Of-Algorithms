# Design a data structure for connection that provides O(1) time insertion
# deletion, and get random

class Connect
	def initialize(*args)
		@@arr = []
		@@hash = Hash.new
	end
	def add(val)
		# Check if val is not present
		if !@@hash.has_key?(val)
			@@hash[val] = @@arr.length # hash index = arr length
			@@arr.push(val)#push val at end of arr
		end
	end
	def remove(val)
		# Check if val is present
		if @@hash.has_key?(val)	
			puts @@arr.join(' ')
			size = @@arr.length-1 
			last = @@arr[size]
			index = @@hash[val]

			puts [index,last].join(' ')
			@@hash.delete(val)

			if @@arr.length > 1
				swap(index,size,@@arr)
			end
			@@arr.delete_at(size)
			if last != val
				@@hash[last]=index
			end
			puts @@arr.join(' '),@@hash
		end	
	end
	def arr
		@@arr
	end
end
def swap(x,y,a)
	a[x],a[y] =a[y],a[x]
end
connect = Connect.new
connect.add(1)
connect.add(2)
connect.add(3)
connect.add(5)
connect.add(6)
puts connect.arr.join(' ')
connect.remove(1)
connect.remove(6)

connect.remove(3)
