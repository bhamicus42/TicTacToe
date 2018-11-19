% filename:  MarkBox.m

set(findobj('tag', ['Box', num2str(CompMoveChoice)]), 'string', PlayerSymbol)
GameState(CompMoveChoice) = WhoseTurn;