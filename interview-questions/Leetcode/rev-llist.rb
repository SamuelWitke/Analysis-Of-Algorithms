# Definition for singly-linked list.
 class ListNode
    attr_accessor :val, :next
     def initialize(val)
        @val = val
        @next = nil
     end
 end

# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def rotate_right(head, m,n)
	new = ListNode.new(0)
	new.next = head
	head = new
	(1..m).each do
		return if head == nil
		head = head.next	
	end
	prvM = head
	mNod = head.next
	nNode = mNod
	prvN = mNod.next
	(m..n).each do
		return if prvN == nil
		tmp = prvN.next
		prvN.next = nNode
		nNode = prvN
		prvN = tmp
	end
	mNode.next = prvN
	prevM.next = nNode
	head = new.next
	trav = head
	while(trav!=nil)
		puts trav.val
		trav = trav.next
	end
end
one = ListNode.new(1)
two = ListNode.new(2)
three = ListNode.new(3)
four = ListNode.new(4)
five = ListNode.new(5)
four.next = five
three.next = four
two.next = three
one.next = two
rotate_right(one,2,4)
