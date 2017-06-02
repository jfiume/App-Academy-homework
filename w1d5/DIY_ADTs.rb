class Stack

  attr_reader :stack_array

  def initialize
    # create ivar to store stack here!
    @stack_stack_array = []
  end

  def add(el)
    # adds an element to the stack
    stack_array.push(el)
  end

  def remove
    # removes one element from the stack
    stack_array.pop
    show
  end

  def show
    # return a copy of the stack
    p stack_array
  end
end


class Queue

  attr_reader :queue_array

  def initialize
    # create ivar to store stack here!
    @queue_array = []
  end

  def enqueue(el)
    # adds an element to the queue
    queue_array.unshift(el)
  end

  def dequeue
    # removes one element from the queue
    queue_array.pop
    show
  end

  def show
    # return a copy of the queue
    p queue_array
  end
end


class Map

  attr_reader :map_array

  def initialize
    @map_array = []
  end

  def assign(key, value)
    if lookup(key)
      idx = map_array.index([key, lookup(key)])
      map_array[idx] = key, value
      show
    else
      map_array << [key, value]
    end
  end

  def lookup(key)
    map_array.each do |k, v|
      return v if k == key
    end
    nil
  end

  def remove(key)
    map_array.each do |k, v|
      map_array.delete([k, v]) if k == key
    end
  end

  def show
    p map_array
  end
end
