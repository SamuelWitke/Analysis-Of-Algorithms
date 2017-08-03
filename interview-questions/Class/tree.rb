class BinarySearchTree
    attr_reader :size
  class Node
    attr_reader :key, :left, :right
    def initialize( key )
      @key = key
      @left = nil
      @right = nil
    end 
	def insert( new_key )
      if new_key <= @key
        @left.nil? ? @left = Node.new( new_key ) : @left.insert( new_key )
      elsif new_key > @key
        @right.nil? ? @right = Node.new( new_key ) : @right.insert( new_key )
      end
    end
  end 
 
  def initialize
    @root = nil
	@index = 0
	@size = 0
  end

 
 def insert( key )
    if @root.nil?
      @root = Node.new( key )
	  @size = 1
    else
      @root.insert( key )
	  @size +=1
    end
  end

 def in_order(node=@root, &block)
    return if node.nil?
    in_order(node.left, &block)
    yield node
    in_order(node.right, &block)
  end

 def pre_order(node=@root, &block)
    return if node.nil?
    yield node
    in_order(node.left, &block)
    in_order(node.right, &block)
  end 

 def post_order(node=@root, &block)
    return if node.nil?
    in_order(node.left, &block)
    in_order(node.right, &block)
    yield node
  end  

  def search( key, node=@root )
    return nil if node.nil?
    if key < node.key
      search( key, node.left )
    elsif key > node.key
      search( key, node.right )
    else
      return node
    end
  end

  def check_height(node)
    return 0 if node.nil?

    leftHeight = check_height(node.left)
    return -1 if leftHeight == -1

    rightHeight = check_height(node.right)
    return -1 if rightHeight == -1

    diff = leftHeight - rightHeight
    if diff.abs > 1
      -1
    else
      [leftHeight, rightHeight].max + 1
    end
  end

  def is_balanced?(node=@root)
    check_height(node) == -1 ? false : true
  end

  def max(node=@root)
	if node.right.nil?
		return node.key
	else 
		return max(node.right)
	end
  end

  def min(node=@root)
	if node.left.nil?
		return node.key
	else
		return min(node.left)
	end
  end

  def median(node=@root)
	return nil if node.nil?
	tmp = median(node.left)
	return tmp if tmp != nil
	if @index == @size/2
		return node.key
	end
	@index += 1
	return median(node.right)
  end
end
