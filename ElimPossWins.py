# %filename: ElimPossWins.m
# %purpose: gets rid of PossWins that have player move already in a space
# %author: Emmy Nam

PossWins = [[1, 2, 3], [4, 5, 6], [7, 8, 9], 
            [1, 5, 9], [3, 5, 7], 
            [1, 4, 7], [2, 5, 8], [3, 6, 9]]

GameState =   [-1, 1, 0, 0, 0, 0, 0, 0, 0]
# //GameState = [1, 4, 7, 2, 5, 8, 3, 6, 9]
# // GameState = [1  2  3 
# //              4, 5, 6
# //              7, 8, 9]
# //
# // GameState = [1  4  7 
# //              2, 5, 8
# //              3, 6, 9]

FinalPossWins = []
CompPossWins = []
EmptyPossWins = []


Options = 0 #//won't need in matlab
for Options in range(len(PossWins)):
#// for options = 1:length(PossWins)

    PossWinOpt = PossWins[Options] #//PossWinOpt = PossWins[options, :]
    print('Poss wins opt: ', PossWinOpt)
    Index = 0 #//won't need in matlab
    Count = 0 #init Count and IsEmpty for each poss win 
    IsEmpty = True
    for Index in range(3): #//box = 1:3
        BoxNum = PossWinOpt[Index] - 1 #//the minus 1 is not for matlab

        if GameState[BoxNum] != 0:
            IsEmpty = False

        Count = Count + GameState[BoxNum]
    
    #After check all boxes in current PossWin Option
    if IsEmpty:
        EmptyPossWins.append(PossWinOpt)
    elif Count < 0:
        CompPossWins.append(PossWinOpt)
    

        #RANDOMLY CHOOSE SPOT
    Options = Options + 1 #//won't need this is def. in matlab for loop
# // end
if len(CompPossWins) > 0:
    FinalPossWins = CompPossWins
elif len(EmptyPossWins) > 0:
    FinalPossWins = EmptyPossWins
else:
    print('No good options')
print(FinalPossWins)

    #     // if GameState(box) == 1
    #     //     PossWinOpt = [];
    #     //     disp('Player here: ' + num2str(box))
    #     // end
    # // end
    # // NewPossWins = [NewPossWins; PossWinOpt]