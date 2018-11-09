% filename:BoxCB
% Purpose:toggles image on box to show player’s current move
% date: 11/6/18
% Authors: Ben Hoffman, Kyle Rockwell, Emmy Nam, Andre Sanchez
% Engr-6 Group Stomadoapod srjc

% BoxNum = get num from tag;
% set(gcbo, UserData, WhoseTurn);
% GameState(BoxNum) = WhoseTurn;
% 
% if WhoseTurn>0
%     set(gcbo, string, 'X');
% else
%     set(gcbo, string, 'O');
% end 
% 
% check for win
%     if abs sum of GameState along any direction, win
%     to sum up diagonally, chek this:  https://www.mathworks.com/matlabcentral/answers/245419-how-to-sum-matrix-diagonals
%      check trace
% 
% check for tie
%     if no GameState 0, tie
%         
% if difficulty > 0
%     computer choose next move
%     options = find(~GameState)

%Emmy, were you intending to change this to a findobj?  -Ben
BoxTag = 'Box4'; %(findobj(gcbo, 'tag'))
BoxNum = str2num(BoxTag(end));

GameState(BoxNum) = WhoseTurn;

for Index = 1:length(PossWins)
    CheckWins = [CheckWins, sum(GameState(PossWins(Index,:)))]
end

if max(CheckWins) == 3
    Player = WhoseTurn
    EndGame = 1
end

if ~find(GameState == 0)
    Ties = Ties + 1;
    EndGame = 1
end
% 
% if EndGame
%     TicTacInit.m
% end


%COMPUTER TURN
WhoseTurn = 1
Player = 'Player1'
PlayerNum = str2num(Player(end))
Player = ['Player' , num2str(PlayerNum + WhoseTurn)]  %Not right eq
WhoseTurn = -WhoseTurn %1 or -1 to indicated player turn init in TicTacInit





