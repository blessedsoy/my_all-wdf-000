require 'pry'

# def my_all?(collection)
#   i = 0
#   while i < collection.length
#     yield(collection[i])
#     i = i+1
#   end

# end

# binding.pry

# my_all?([1,2,3]) {|i| i < 2 }


def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i += 1
  end
binding.pry
  block_return_values.include?(false) ? false : true

end


my_all?([1,2,3]) {|i| i < 2 }