
class Mastermind
  def initialize(board = nil, code = nil)
    @board = (board || (Array.new 4, " "))
    @code = (code || (Array.new 4, " "))
    @guess_num = 0
  end

  def display_board
    sep = "-----------------"
    puts sep
    puts"| #{@board[0]} | #{@board[1]} | #{@board[2]} | #{@board[3]} |"
    puts sep
  end

  def display_code
    sep = "-----------------"
    puts sep
    puts"| #{@code[0]} | #{@code[1]} | #{@code[2]} | #{@code[3]} |"
    puts sep
  end

  def computer_code
    @code = ['1','2','3','9']
    until valid_code?
      @code = rand(1000..6666).to_s.split('')
    end

  end

  def create_code
    puts "Please create a 4 digit secret code using numbers (1-6)"
    code = gets.strip
    @code = code.split('')

  end

  def valid_code?
    if @code.all? {|digit| digit.to_i.between?(1,6)} && (@code.count == 4)
      true
    end
  end

  def coder_turn
    create_code
    if !valid_code?
      coder_turn
    else
      20.times do
        puts "########################"
        puts "????????????????????????"
      end
    end
  end


  def guess
    puts "#{@guess_num}) please guess the secret 4 digit code using numbers (1-6)"
    guess = gets.strip
    guess.slice(0..3).split('')
    @board.clear
    @board[0] = guess[0]
    @board[1] = guess[1]
    @board[2] = guess[2]
    @board[3] = guess[3]
  end


  def won?
    if @board == @code
      true
    end
  end

  def feedback
    correct_number = 0
    correct_guess = 0
    @code.each_with_index do |number, index|
      if @code[index] == @board[index]
        correct_guess +=1
      elsif
        (@code.include?(@board[index]) && @code.index(@board[index].to_s) != @board.index(@board[index].to_s))
        correct_number +=1
      end
    end
    puts "numbers in correct place: #{correct_guess}"
    puts "correct numbers in wrong place: #{correct_number}"

  end

  def turn
    guess
    if valid_guess? && !over?
      display_board
      feedback
      @guess_num +=1
    elsif !valid_guess?
      turn
    end
  end

  def valid_guess?
    if (@board.all? {|digit| digit.to_i.between?(1,6)} && (@board.count == 4))
      true
    else
      false
    end
  end

  def play
    until over?
      turn
    end
    if won?
      display_code
      puts "You cracked the code!"
    elsif !won?
      display_code
      puts "The coder was too strong this time!"
    end
    puts "Thanks for playing!"

  end

  def over?
    if won? || @guess_num > 9
      true
    end
  end




  def welcome
    puts "I am Sinistar!"
    puts" ..."
    puts "Oh shit, my bad you said Mastermind"
    puts "Welcome to Mastermind."
  end
end
