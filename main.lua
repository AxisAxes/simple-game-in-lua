#!/usr/bin/lua
wordGame = dofile('words.lua')
print([[
Discovery Number :

instructions :
	> Chose type of game;
	> Chose range;
	> type a natural number on keyboard;

]])
print([[
	Chose your game :
		> ( 1 ) Word game
		> ( 2 ) Number game
]])
value = io.read(1)
if value == 1 then
	print('Type max words')
	maxWords = io.read(2)
	print('Type length words')
	lengthWord = io.read(2) 
	return wordGame.returnValuesRandom(maxWords, lengthWord)
end





