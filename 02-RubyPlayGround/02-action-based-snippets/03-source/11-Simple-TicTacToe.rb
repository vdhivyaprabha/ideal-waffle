BOARD_SIZE = 3

class Player
  attr_accessor :name, :mark

  def initialize(name, mark)
    @name = name
    @mark = mark
  end
end

class Game
  def initialize
    @board = Array.new(BOARD_SIZE) { Array.new(BOARD_SIZE, " ") }
    @players = []
    @current_player_index = 0
  end

  def play
    puts "Welcome to the Harry Potter Tic Tac Toe Game!"

    @players << Player.new("Harry", "X")
    @players << Player.new("Voldemort", "O")

    loop do
      display_board
      player = @players[@current_player_index]
      puts "#{player.name}, it's your turn (#{player.mark})."
      row, col = get_move
      make_move(row, col, player.mark)

      if game_over?
        display_board
        puts "Game over! #{player.name} wins!"
        break
      elsif tie_game?
        display_board
        puts "It's a tie!"
        break
      end

      @current_player_index = (@current_player_index + 1) % @players.length
    end
  end

  private

  def display_board
    puts "-------------"
    @board.each do |row|
      puts "| #{row[0]} | #{row[1]} | #{row[2]} |"
      puts "-------------"
    end
  end

  def get_move
    loop do
      print "Enter your move (row, col): "
      row, col = gets.chomp.split(",").map(&:to_i)
      if valid_move?(row, col)
        return row, col
      else
        puts "Invalid move. Try again."
      end
    end
  end

  def valid_move?(row, col)
    row.between?(0, BOARD_SIZE-1) && col.between?(0, BOARD_SIZE-1) && @board[row][col] == " "
  end

  def make_move(row, col, mark)
    @board[row][col] = mark
  end

  def game_over?
    winning_lines = @board + @board.transpose + diagonals
    winning_lines.any? { |line| line.uniq.length == 1 && line[0] != " " }
  end

  def tie_game?
    @board.flatten.none? { |cell| cell == " " }
  end

  def diagonals
    [[@board[0][0], @board[1][1], @board[2][2]], [@board[0][2], @board[1][1], @board[2][0]]]
  end
end

Game.new.play