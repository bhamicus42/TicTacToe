%filename: ElimPossWins.m
%purpose: gets rid of PossWins that have player move already in a space
%author: Emmy Nam


NewPossWins = []
for options = 1:length(PossWins)
    PossWinOpt = PossWins(options, :)
    for box = 1:3
        if GameState(box) == 1
            PossWinOpt = [];
            disp('Player here: ' + num2str(box))
        end
    end
    NewPossWins = [NewPossWins; PossWinOpt]
end

