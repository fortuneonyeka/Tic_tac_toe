# frozen_string_literal: true

# rubocop:disable Metric/BlockLength

require './lib/game_logic'

describe Board do
  let(:play) { Board.new }
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
    it 'First player should return true' do
      play.playerturn(1, 0)
      play.playerturn(4, 0)
      play.playerturn(3, 0)
      expect(play.checkwinner).to eq(false)
    end
    it 'Second player should return true' do
      play.playerturn(1, 1)
      play.playerturn(4, 1)
      play.playerturn(7, 1)
      expect(play.checkwinner).to eq(true)
    end
    it 'Second player should return true' do
      play.playerturn(1, 1)
      play.playerturn(4, 1)
      play.playerturn(6, 1)
      expect(play.checkwinner).to eq(false)
    end
    describe '#tie?' do
      it 'should display true if all board position is taken' do
        play.playerturn(0, 'X')
        play.playerturn(1, 'O')
        play.playerturn(2, 'X')
        play.playerturn(3, 'O')
        play.playerturn(4, 'X')
        play.playerturn(5, 'O')
        play.playerturn(6, 'O')
        play.playerturn(7, 'X')
        play.playerturn(8, 'O')
        expect(play.checkwinner).to eql(true)
      end
    end
  end
end
# rubocop:enable Metric/BlockLength
