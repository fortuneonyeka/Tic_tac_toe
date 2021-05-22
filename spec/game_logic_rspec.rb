require './lib/game_logic'


  describe Board do
    let(:play) {Board.new }
    describe '#display_board' do
      it 'should display number from 1-9' do
        expect(play.display_board).to eql(
          " 1 | 2 | 3 \n" \
          "------------\n" \
          " 4 | 5 | 6 \n" \
          "------------\n" \
          " 7 | 8 | 9 \n"
        )
      end
   end

   describe '#player_turn' do
    it 'should display available options' do
      expect(@board = (1..9).to_a).to eql([1, 2, 3, 4, 5, 6, 7, 8, 9])
    end
   end

   describe '#chekwinner' do 
    it 'should return false' do
      expect(play.checkwinner).to eq(false)
    end

   it 'First player should return true' do
    play.playerturn(1, 0)
    play.playerturn(2, 0)
    play.playerturn(3, 0)
     expect(play.checkwinner).to eq(true)
   end
   it 'Second player should return true' do
    play.playerturn(1, 1)
    play.playerturn(4, 1)
    play.playerturn(7, 1)
     expect(play.checkwinner).to eq(true)
   end
  describe '#tie?' do
    num_turn = 0
    it 'should display true if all board position is taken' do
      play.playerturn(0, 'X')
      play.num_turn
      play.playerturn(1, 'O')
      play.num_turn
      play.playerturn(2, 'X')
      play.num_turn
      play.playerturn(3, 'O')
      play.num_turn
      play.playerturn(4, 'X')
      play.num_turn
      play.playerturn(5, 'O')
      play.num_turn
      play.playerturn(6, 'O')
      play.num_turn
      play.playerturn(7, 'X')
      play.num_turn
      play.playerturn(8, 'O')
      play.num_turn
      play.num_turn
      play.cell_num
      expect(play.tie?).to eql(true)
      num_turn +=1
    end
  end
   
end
end
