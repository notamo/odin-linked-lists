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

  # returns the total number of nodes in the list
  def size
    return 0 unless head

    counter = 1
    tmp = head
    while tmp.next_node
      tmp = tmp.next_node
      counter += 1
    end

    counter
  end
end
