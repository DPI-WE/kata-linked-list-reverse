class ListNode
  attr_accessor :value, :next

  def initialize(value = 0, _next = nil)
    @value = value
    @next = _next
  end

  def ListNode.reverse(head)
    # TODO
  end

  def ListNode.to_a(node)
    array = []
    while node
        array << node.value
        node = node.next
    end
    array
  end

  def ListNode.to_l(array)
    return nil if array.empty?

    head = ListNode.new(array.first)
    current = head
    array[1..].each do |value|
        current.next = ListNode.new(value)
        current = current.next
    end
    head
  end
end
