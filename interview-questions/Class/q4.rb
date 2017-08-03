require './tree.rb'

tree = BinarySearchTree.new
File.open('med_num.txt','r').each do |line|
	line.strip.split(' ').each do |x|
		tree.insert(x.to_i)
	end
end
puts tree.median
