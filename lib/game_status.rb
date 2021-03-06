# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    taken = combo.all? do |pos|
      puts position_taken?(board,pos)
      position_taken?(board,pos)
    end

    if (board[combo[0]] == board[combo[1]] && board[combo[0]] == board[combo[2]] && taken)
      return combo
        end
  end
  return false
end

def full?(board)
 return !board.include?(" ")
end

def draw?(board)
  return !won?(board) && full?(board)
end

def over?(board)
  return won?(board) || draw?(board) || full?(board)
end

def winner(board)
  win_pos = won?(board)
  if (win_pos)
    return board[win_pos[0]]
  else
    return nil
  end
end
