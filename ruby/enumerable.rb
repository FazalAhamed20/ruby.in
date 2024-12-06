


class Snacks

  include Enumerable
attr_reader :food, :drink
  def initialize(food,drink)
   @food=food
   @drink=drink

  end

  def items
    food+drink

  end

  def each
    items.each { |item|  yield item}
  end



end

item=Snacks.new(["lays","chips","corns"],["pepsi","cola","maza"])

p item.items

p item.include?"maza"