# circular_queue.rb
# prefix queue is not necessary however implemented for better readability

class CircularQueue
  attr_accessor :first_pos, :last_pos

  def initialize(size)
    @queue = Array.new(size)
    @first_pos = 0
    @last_pos = 0
  end

  def enqueue(obj)
    if queue.empty?
      queue[first_pos] = obj
    elsif queue.full?
      queue[first_pos] = obj
      queue.last_pos = first_pos
      out_of_bounds?(first_pos + 1) ? self.first_pos = 0 : self.first_pos += 1
    else
      out_of_bounds?(last_pos + 1) ? self.last_pos = 0 : self.last_pos += 1
      queue[last_pos] = obj
    end
  end

  def dequeue
    return nil if empty?
    x = queue[first_pos]
    queue[first_pos] = nil
    out_of_bounds?(first_pos + 1) ? self.first_pos = 0 : self.first_pos += 1
    x
  end

  def queue
    self
  end

  def [] idx
    @queue[idx]
  end

  def []=(idx, obj)
    @queue[idx] = obj
  end

  def empty?
    @queue.count(nil) == @queue.size
  end

  def full?
    @queue.count(nil) == 0
  end

  def out_of_bounds?(pos)
    (@queue.size - 1) < pos
  end
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil
