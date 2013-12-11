#binary search tree
require_relative "node"
require 'pry'

class BST

  attr_reader :root, :right, :left

  def initialize
    @root = nil
  end

  def add(value)
    new_node = Node.new(value)
    if @root.nil?
      @root = new_node
    end

    current_node = @root

      if new_node.value > current_node.value
        if !current_node.right.nil?
          while new_node.value > current_node.value
            current_node = current_node.right
          end
          current_node = new_node
        else
          current_node.right = new_node
        end


      elsif new_node.value < current_node.value
        if !current_node.left.nil?
          while new_node.value < current_code.value
            current_node = current_node.left
          end
          current_node = new_node
        else
          current_node.left = new_node
        end

      else new_node == current_node
        return false
      end
  end

end
