require 'player'

describe Player do
  
  let(:player){Player.new("Jon")}
  let(:rock){double :choice}

  it 'should be initialized with a name' do
    expect(player.name).to eq('Jon')
  end

  it 'should be able to make a choice' do
    player.choose(rock)
    expect(player.chosen?).to be true
  end

end