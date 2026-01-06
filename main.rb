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
puts "list.at(-1)=#{list.at(-1).inspect}"
puts "list.at(0)=#{list.at(0).inspect}"
puts "list.at(1)=#{list.at(1).inspect}"
puts "list.at(2)=#{list.at(2).inspect}"
puts "list.at(3)=#{list.at(3).inspect}"
puts "list.pop=#{list.pop}"
p list

puts

list2 = LinkedList.new
p list2
puts "list2.size=#{list2.size}"
puts "list2.head=#{list2.head.inspect}"
puts "list2.tail=#{list2.tail.inspect}"
puts "list2.at(0)=#{list2.at(0).inspect}"
list2.append('rabbit')
list2.append('dog')
list2.append('cat')
p list2.contains?('fish')
p list2.contains?('cat')
