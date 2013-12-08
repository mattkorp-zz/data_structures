require_relative 'graph'
require_relative 'node'

graph = Graph.new
graph.add_node(Node.new(:a))
graph.add_node(Node.new(:b))
graph.add_node(Node.new(:c))
graph.add_node(Node.new(:d))

graph.add_edge(:a, :b)
graph.add_edge(:a, :c)
graph.add_edge(:a, :d)

graph.add_edge(:b, :a)
graph.add_edge(:b, :c)
graph.add_edge(:b, :d)

graph.add_edge(:c, :a)
graph.add_edge(:c, :b)
graph.add_edge(:c, :d)

graph.add_edge(:d, :a)
graph.add_edge(:d, :b)
graph.add_edge(:d, :c)

puts graph[:a]    #=> a -> [b]
puts graph[:b]    #=> b -> [c]
puts graph[:c]    #=> c -> [a]
puts graph[:d]    #=> d -> [a]
