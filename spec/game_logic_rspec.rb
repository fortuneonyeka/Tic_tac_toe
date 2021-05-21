require 'game_logic'

# RSpec.describe Board do
#   def display_board
#       " #{board[0]} | #{board[1]} | #{board[2]} \n" \
#       "+---+---+---+\n" \
#       " #{board[3]} | #{board[4]} | #{board[5]} \n" \
#       "+---+---+---+\n" \
#       " #{board[6]} | #{board[7]} | #{board[8]} \n" \
#   end
  


  # describe "Computer" do
  #   it "creates file username" do
  #   user = Computer.new
  #   expect(user).to be_truthy
  #   end
  # end

  describe '#self.display_board' do
    subject = Board.new
      it 'returns array of 1 to 9' do
        expect(subject).to eql(display_board)
      end
    end
end
