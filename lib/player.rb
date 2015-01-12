class Player

  attr_accessor :name
  attr_reader :item

  def initialize(name)
    @name = name
    @item = nil
  end

  def choose(item)
    @item = item
  end

  def chosen?
    !@item.nil?
  end

end