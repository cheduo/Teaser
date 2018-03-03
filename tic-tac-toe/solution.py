import copy
def win(board,player):
    if max(min(player==i for i in row) for row in board):
        return True
    if max(min(player==i for i in row) for row in zip(*board)):
        return True
    if min(player==board[i][i] for i in range(len(board))) or min(player==board[i][-i-1] for i in range(len(board))):
        return True

def end(board):
    return not max('.'==i for row in board for i in row)

def score(board,player):
    ret = (-2, board)
    for row in board:
        for i, v in enumerate(row):
            if v=='.':
                row[i] = player
                if win(board,player):
                    ret=(1, copy.deepcopy(board))
                elif end(board):
                    ret=(0, copy.deepcopy(board))
                else:
                    s, b = score(board, {'x':'o','o':'x'}[player])
                    ret  = max(ret, (-s, copy.deepcopy(board)))
                row[i]='.'
    return ret

def optimalPlay(board,player):
    _, newboard = score([list(i) for i in board], player)
    return (board, [''.join(i) for i in newboard])

board = ['x.o','.x.','...']
optimalPlay(board,player='o')
