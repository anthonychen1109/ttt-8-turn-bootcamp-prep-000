def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0,9)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  counter = 0
  until counter == 8
    if board[counter] == "X" || board[counter] == "O"
      return false
    else
      counter += 1
    end
  end
end

def move(board, index)
  board[index] = "X"
end

def input_to_index(index)
  return index.to_i - 1
end
