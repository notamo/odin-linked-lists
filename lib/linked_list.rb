class LinkedList
  attr_accessor :_head

  def initialize
    @_head = nil
  end

  # adds a new node containing value to the end of the list
  def append(value)
    if _head
      tmp = _head
      tmp = tmp.next_node while tmp.next_node
      tmp.next_node = Node.new(value)
    else
      self._head = Node.new(value)
    end
  end

  # adds a new node containing value to the start of the list
  def prepend(value)
    if _head
      prev_head = _head
      self._head = Node.new(value, prev_head)
    else
      self._head = Node.new(value)
    end
  end

  # returns the total number of nodes in the list
  def size
    return 0 unless _head

    counter = 1
    tmp = _head
    while tmp.next_node
      tmp = tmp.next_node
      counter += 1
    end

    counter
  end

  def head
    _head ? _head.value : nil
  end

  # should return the value of the final node in the list
  # if the list is empty, it should return nil
  def tail
    return unless _head

    tmp = _head
    tmp = tmp.next_node while tmp.next_node
    tmp.value
  end
end
