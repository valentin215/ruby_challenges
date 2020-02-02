class Deque
  def initialize
    @head = nil
    @tail = nil
  end

  def push(v)
    if @tail.nil?
      @head = Node.new(v)
      @tail = @head
    else
      n = Node.new(v, @tail)
      @tail.next = n
      @tail = n
    end
  end

  def pop
    out = @tail
    @tail = out.prev
    out.value
  end

  def unshift(v)
    if @head.nil?
      @head = Node.new(v)
      @tail = @head
    else
      n = Node.new(v, nil, @head)
      @head.prev = n
      @head = n
    end
  end

  def shift
    out = @head
    @head = out.next
    out.value
  end
end

class Node
  attr_accessor :value, :prev, :n

  def initialize(value, prev=nil, n=nil)
    @value = value
    @prev  = prev
    @next  = n
  end
end
