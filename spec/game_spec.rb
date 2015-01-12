require 'game' 

describe Game do

  let(:game){Game.new}
  let(:player){double :player, item: :rock}

  context 'A game can' do

    it 'add a player' do
      game.add_player(player)
      expect(game.has_player?).to be true
    end

  end

  context 'when playing, the game' do
    
    it 'the computer can choose from an array of symbols(rock, paper, scissors) at random' do
      game.choose
      expect(game.chosen?).to be true
    end

    it "a player can choose an item" do
      game.add_player(player)
      expect(game.player.item).to eq :rock
    end

    it "can know the player has won when the player chose rock and compter chose scissors" do
        game.add_player(player)
        allow(game).to receive(:choose).and_return :scissors
        expect(game.winner).to eq game.player
    end

    it "can know the computer has won when player chose rock and computer chose paper" do
      game.add_player(player)
      allow(game).to receive(:choose).and_return :paper
      expect(game.winner).to eq game
    end

    # it "can know itself has won when player chooses rock and computer chooses paper" do
    #   game.add_player(player)
    #   allow(player).to receive(:item).and_return :scissors
    #   allow(game).to receive(:choose).and_return :paper
    #   expect(game.winner).to eq game.player
    # end

    # it "can know there is a draw when they are the same" do
    #   game.add_player(player)
    #   allow(game).to receive(:choose).and_return :rock
    #   expect(game.winner).to eq "Draw"
    # end

  end

end