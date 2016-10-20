# Implementation of a list using a Native array --> ruby does this automatically

class ArrayList
  def initialize
    @storage = [0,0,0,0,0,0,0,0,0,0]
    @size = 0
  end

  # Adds _value_ at the end of the list
  def add(value)
    @storage[@size] = value
    #adding one to size
    @size +=1
  end

  # Deletes the _last_ value in the array
  def delete

  end

  def display
    toReturn = "["
    @size.times do |i|
      toReturn += @storage[i].to_s + ","
    end
    puts toReturn + "]"
  end

  def include?(key)
    @size.times do |i|
      return true if @storage[i] == key
    end
    return false
  end

  def size
    return @size
  end


# you should return the larges element in the array.
# similiar in include
  def max
# its equal to first part of array.

    max = @storage[0]
    @size.times do |i|
      if @storage[i] > max
        max = @storage[i]
      end
    end
    return max
  end
end

# Initializing an Array List
arr = ArrayList.new

# Adding Elements to Array List
arr.add(10)
arr.add(20)

arr.max 
# Display the Array List
# puts "Displaying Array List:"
# arr.display
#
# puts "Delete last element and then display the array list:"
# arr.delete
# arr.display
