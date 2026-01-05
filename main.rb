require_relative 'lib/linked_list'
require_relative 'lib/node'

list = LinkedList.new
list.append(3)
list.append(1)
list.prepend(7)
puts "list.size=#{list.size}"
p list

list2 = LinkedList.new
puts "list2.size=#{list2.size}"
p list2
