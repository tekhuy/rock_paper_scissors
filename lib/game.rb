class Game

  def initialize
    @player = nil
    @rps = [:rock, :paper, :scissors]
    @chosen = false
    @item = nil
  end

  attr_accessor :player, :rps, :item

  def add_player(player)
    @player = player
  end

  def has_player?
    !@player.nil?
  end

  def choose
    @chosen = true
    @item = @rps.sample
  end

  def chosen?
    @chosen
  end

  def player_item
    @player.item
  end

  def result
    case 
      when player_item == :rock && self.item == :scissors
        return @player
      when player_item == :paper && self.item == :rock
        return @player
      when player_item == :scissors && self.item == :paper
        return @player
      when player_item == self.item
        return "Draw"
      else
        return self
    end
  end

  def winner
    win = { 
      :rock => :scissors, 
      :paper => :rock,
      :scissors => :paper
    }
  end

end