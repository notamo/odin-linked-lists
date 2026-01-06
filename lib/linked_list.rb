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

  # should return the value of the first node in the list
  # if the list is empty, it should return nil
  def head
    _head ? _head.value : nil
  end

  # should return the value of the final node in the list
  # if the list is empty, it should return nil
  def tail
    return nil unless _head

    tmp = _head
    tmp = tmp.next_node while tmp.next_node
    tmp.value
  end

  # should return the value of the node at the given index
  # if there’s no node at the given index, it should return nil
  def at(index)
    return nil unless _head
    return head if index.zero?

    idx = 0
    tmp = _head
    while tmp.next_node
      tmp = tmp.next_node
      idx += 1
      return tmp.value if index == idx
    end
    nil
  end

  # should remove the head node from the list and return that node’s value
  # if called on an empty list, it should just return nil
  def pop
    return nil unless _head

    tmp = _head
    self._head = _head.next_node
    tmp.value
  end

  # returns true if the passed in value is in the list and otherwise returns false
  def contains?(value)
    return true if _head.value == value

    tmp = _head
    while tmp.next_node
      tmp = tmp.next_node
      return true if tmp.value == value
    end
    false
  end

  # returns the index of the node containing the value
  # - if the value isn’t found, it should return nil
  # - if more than one node has a value matching the given value,
  #   it should return the index of the first node with the matching value
  def index(value)
    return 0 if _head.value == value

    tmp = _head
    idx = 0
    while tmp.next_node
      tmp = tmp.next_node
      idx += 1
      return idx if tmp.value == value
    end
    nil
  end
end
