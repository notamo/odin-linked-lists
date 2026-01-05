class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  # adds a new node containing value to the end of the list
  def append(value)
    if head
      tmp = head
      tmp = tmp.next_node while tmp.next_node
      tmp.next_node = Node.new(value)
    else
      self.head = Node.new(value)
    end
  end

  # adds a new node containing value to the start of the list
  def prepend(value)
    if head
      prev_head = head
      self.head = Node.new(value, prev_head)
    else
      self.head = Node.new(value)
    end
  end
end

class Node
  attr_accessor :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
