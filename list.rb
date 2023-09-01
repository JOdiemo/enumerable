# frozen_string_literal: true

require_relative './enumerable'
# Represents a list of elements tested for enumerable conditions
class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each(&element)
    @list.each(&element)
  end
end

list = MyList.new(1, 2, 3, 4)
# test all_method
p(list.all? { |e| e < 5 })
p(list.all? { |e| e > 5 })

# # test any_method
p(list.any? { |e| e == 2 })
p(list.any? { |e| e == 5 })
# # test filter_method
p(list.filter(&:even?))
