% filename:  MarkBox.m

% disp(['Mark box called.  Marking Box', num2strComp
set(findobj('tag', ['Box', num2str(CompMoveChoice)]), 'string', PlayerSymbol)
GameState(CompMoveChoice) = WhoseTurn;