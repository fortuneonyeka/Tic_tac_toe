 class Board
    public
    attr_accessor :board
    def initialize
      @board = (1..9).to_a 
    end
    def displayboard
      puts '+---+---+---+'
      puts "| #{board[0]} | #{board[1]} | #{board[2]} |"
      puts '+---+---+---+'
      puts "| #{board[3]} | #{board[4]} | #{board[5]} |"
      puts '+---+---+---+'
      puts "| #{board[6]} | #{board[7]} | #{board[8]} |"
      puts '+---+---+---+'
    end

    def checkwinner
      if board[0]==board[1] && board[1]==board[2]
        return true
      elsif board[3]==board[4] && board[4]==board[5]
        return true
  
      elsif board[6]==board[7] && board[7]==board[8]
        return true
  
      elsif board[0]==board[3] && board[3]==board[6]
        return true
  
      elsif board[1]==board[4] && board[4]==board[7]
        return true
  
      elsif board[2]==board[5] && board[5]==board[8]
        return true
  
      elsif board[0]==board[4] && board[4]==board[8]
        return true
  
      elsif board[2]==board[4] && board[4]==board[6]
        return true
      else
        return false
      end
    end

    def playerturn(name,x)
      puts "Its #{name} turn!"
      puts "\n"
      puts 'Please select the available cell from the board'
      cell_num = gets.chomp.to_i
      loop do
        if cell_num >= 1 && cell_num <= 9  &&  board[cell_num-1]==cell_num        
          if x==0
            board[cell_num-1]='X'
          else
            board[cell_num-1]='O'
          end
          break
        end
  
        puts 'invalid move'
        puts 'Please enter a valid number from 1 - 9!'
        cell_num = gets.chomp.to_i
      end
    end
  
end


 