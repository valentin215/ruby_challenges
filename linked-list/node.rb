class Node
  attr_accessor :value, :prev, :n

  def initialize(value, prev=nil, n=nil)
    @value = value
    @prev  = prev
    @next  = n
  end
end
