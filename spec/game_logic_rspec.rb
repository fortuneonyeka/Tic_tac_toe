require './lib/game_logic'



  describe Board do
    describe '#display_board' do
      play = Board.new 
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
    play = Board.new 
    it 'should display available options' do
      expect(@board = (1..9).to_a).to eql([1, 2, 3, 4, 5, 6, 7, 8, 9])
    end
  end
end
  
