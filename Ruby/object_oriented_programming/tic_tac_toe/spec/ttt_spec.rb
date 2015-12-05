require_relative "../lib/board.rb"
=begin
don't know how to test this portion yet. will update once I learn.
describe "display_board" do 
  
  #context "when a 9 element array is given"
  #it "displays array in 3 equal rows" 
   # board = Array.new 9, " "
   # ttt_board = display_board(board)
    #expect(ttt_board).to include("   |   |  ")
  #end
	
end
=end

describe "turn" do

  it "says it's 'X' player's turn when round is even" do
  odd_turn = turn(2, "Jeff", "Ted")
  expect(odd_turn).to eq("Jeff")
  end

  it "announces 'O' player's turn when round is odd" do
    even_turn = turn(3, "Jeff", "Ted")
    expect(even_turn).to eq("Ted")
  end
end

describe "position_taken?" do

  it "takes a board and a location as arguments" do
    board = []
    location = 7
    expect{position_taken?(board, location)}.to_not raise_error
  end

  it "returns true if position has an 'X' or an 'O' ." do
   
    board = ["X"," "," "," "," "," "," "," "," "]
    one_taken = position_taken?(board, 1)
    
    expect(one_taken).to be_truthy
  end

  it "returns false if position does not have an 'X' or an 'O' ." do
    board = [" "," "," "," "," "," "," "," "," "]
    one_open = position_taken?(board, 1)

    expect(one_open).to be_falsey
  end

end

