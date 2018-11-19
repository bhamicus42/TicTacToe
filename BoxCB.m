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

%setPlayerInfo based on whoseTurn
if WhoseTurn > 0
    Player = 1;
    Opponent = 2;
    PlayerSymbol = 'X';
elseif WhoseTurn < 0
    Player = 2;
    Opponent = 1;
    PlayerSymbol = 'O';
end

%Emmy, were you intending to change this to a findobj?  -Ben
BoxTag = (get(gcbo, 'tag'));
BoxNum = str2num(BoxTag(end));

GameState(BoxNum) = WhoseTurn;
set(gcbo, 'string', PlayerSymbol);

%Checks for possible wins
for Index = 1:length(PossWins)
    CheckWins = [CheckWins, sum(GameState(PossWins(Index,:)))]
end

if max(CheckWins) == 3
    EndGame = 1;
else
    CheckWins = [];
end

%checks if game should be over
if (sum(sum(abs(GameState)))) == 9
    Ties = Ties + 1
    TieBool = 1;
    EndGame = 1;
end
 
if EndGame
    set(findobj('tag', 'GameOverPB'), 'Visible', 'on')
    set(findobj('tag', 'GameOverPB'), 'Enable', 'on')
end

%COMPUTER TURN
% WhoseTurn = 1
% Player = 'Player1'
% PlayerNum = str2num(Player(end))
% Player = ['Player' , num2str(PlayerNum + WhoseTurn)]  %Not right eq
WhoseTurn = -WhoseTurn; %1 or -1 to indicated player turn init in TicTacInit

% 
% 
% 
% 


set(findobj('tag',Player1Text),'string',Player1);
set(findobj('tag',Player2Text),'string',Player2);
set(findobj('tag',P1Wins),'string',num2str(PlayerWins(1)));
set(findobj('tag',P2Wins),'string',num2str(PlayerWins(2)));
set(findobj('tag',Ties),'string',num2str(Ties));
set(findobj('tag',P1Losses),'string',num2str(PlayerLosses(1)));
set(findobj('tag',P2Losses),'string',num2str(PlayerLosses(2)));