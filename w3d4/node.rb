class Node
    attr_reader :value, :children


    def initialize(value, children=[])
        @value = value
        @children = children
        @parent # if you have info of parent you na build from the top(root node) and down. Having a parent is optional 
    end

    def dfs(target) #RECURSIVE :( .... so sad.. do you need a basecase
        return self if self.value == target
        return nil if self.children.empty? 

        self.childen.each do |child|
            child.dfs(target)
            if 
        end

        #check value of current node
    end


    def bfs(target) # fastest/quickest/shortest path between nodes, typically doens't use recusion! typically use a queue

        q= Queue.new
        q.enqueue(self)

        until q.empty? 
            curr = q.dequeue
            return curr if curr.val == target
            curr.children.each  {|child| q.enqueue(child)}
            # q.enqueue(curr.children) <= another option but the one above is better 
        end 
        nil
    end

    def parent=(new_parent)
        #check if self already has a parent, remove self from the old parent)
        # reassign parent to new_parent
        #add self to new_parents children (only if !new_parent.nil?)




end

d = Node.new('d')
e = Node.new('e')
f = Node.new('f')
g = Node.new('g')
b = Node.new('b',['d','e'])
c = Node.new('c',['f','g'])
a = Node.new('a',['b','c'])
# you need to build from the bottom up starting from leaves then up to the root node

g,children << Node.new('h') # a way to add on a new leaf. You'll need to connect it to the tree by establishing it as a child of some node

a.children << b << c
b.children << d << e
c.children << f << g

# if you switch a child to a different parent then you must also edit any other parent that thinks it "owns" that child