require "Set"
class GraphNode

    attr_accessor :value, :neighbors

    def initialize(value)
        self.value = value
        self.neighbors = []
    end
    
end

def bfs(starting_node, target_value)
        visited = Set.new()
        return starting_node if starting_node.value == target_value
        visited.add(starting_node)
        queue= [starting_node]
        until queue.length == 0 && !visited.include?((queue[0]))
            queue[0].neighbors.each do |neighbor|
                return nil if visited.include?(neighbor)
                visited.add(neighbor)
                if neighbor.value == target_value
                    return neighbor
                else
                    queue += neighbor.neighbors
                end
            end
        end
        nil
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a, "f")