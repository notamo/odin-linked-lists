require_relative 'lib/linked_list'

list = LinkedList.new
list.append(3)
list.append(1)
list.prepend(7)
p list.size
p list

puts '---'

list2 = LinkedList.new
p list2.size
p list2
