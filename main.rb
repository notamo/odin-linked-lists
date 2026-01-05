require_relative 'lib/linked_list'
require_relative 'lib/node'

list = LinkedList.new
list.append(3)
list.append(1)
list.prepend(7)
p list
puts "list.size=#{list.size}"
puts "list.head=#{list.head.inspect}"
puts "list.tail=#{list.tail.inspect}"

puts

list2 = LinkedList.new
p list2
puts "list2.size=#{list2.size}"
puts "list2.head=#{list2.head.inspect}"
puts "list2.tail=#{list2.tail.inspect}"
