require_relative '../lib/player'
require_relative '../lib/board'

describe 'board' do
  board = Board.new
  it 'condition1: First Row' do
    board.square = ['x', 'x', 'x', 4, 5, 6, 7, 8, 9]
    expect(board.condition1).to eql(true)
  end
  it 'condition2: First Column' do
    board.square = ['x', 2, 3, 'x', 5, 6, 'x', 8, 9]
    expect(board.condition2).to eql(true)
  end

  it 'condition3: First Diagonal' do
    board.square = ['x', 2, 3, 4, 'x', 6, 7, 8, 'x']
    expect(board.condition3).to eql(true)
  end

  it 'condition4: Second Column' do
    board.square = [1, 'x', 3, 4, 'x', 6, 7, 'x', 9]
    expect(board.condition4).to eql(true)
  end

  it 'condition5: Third Column' do
    board.square = [1, 2, 'x', 4, 5, 'x', 7, 8, 'x']
    expect(board.condition5).to eql(true)
  end

  it 'condition6: Second Diagonal' do
    board.square = [1, 2, 'x', 4, 'x', 6, 'x', 8, 9]
    expect(board.condition6).to eql(true)
  end

  it 'condition7: Second Row' do
    board.square = [1, 2, 3, 'x', 'x', 'x', 7, 8, 9]
    expect(board.condition7).to eql(true)
  end

  it 'condition8: Third Row' do
    board.square = [1, 2, 3, 4, 5, 6, 'x', 'x', 'x']
    expect(board.condition8).to eql(true)
  end

  it 'victory' do
    board.square = [1, 2, 3, 4, 5, 6, 'x', 'x', 'x']
    expect(board.condition8).to eql(true)
  end
  it 'draw' do
    board.square = %w[x o x x o o o x x]
    expect(board.draw).not_to eql(false)
  end
end
