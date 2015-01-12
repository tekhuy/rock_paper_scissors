require 'game' 

describe Game do

  let(:game){Game.new}
  let(:player){double :player, item: :rock}

  before(:each) do
    game.add_player(player)
  end

  context 'A game can' do

    it 'add a player' do
      expect(game.has_player?).to be true
    end

  end

  context 'when playing, the game' do
    
    it 'the computer can choose from an array of symbols(rock, paper, scissors) at random' do
      game.choose
      expect(game.chosen?).to be true
    end

    it "a player can choose an item" do
      expect(game.player.item).to eq :rock
    end

    it 'can check what item a player has' do
      expect(game.player_item).to eq :rock
    end

    it "can know the player has won when the player chose rock and compter chose scissors" do
      game.item = :scissors
      expect(game.result).to eq game.player
    end

    it "can know the computer has won when player chose rock and computer chose paper" do
      game.item = :paper
      expect(game.result).to eq game
    end

    it "can know there is a draw when they are the same" do
      game.item = :rock
      expect(game.result).to eq "Draw"
    end

  end

end