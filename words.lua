#!/usr/bin/lua
function choseRange(maxWords , lengthWord)
	local res = ""
	local listWords = {}
	for _,v in ipairs(listWords) do
		for i = 1, lengthWord do
			res = res .. string.char(math.random(97, 122))
			table.insert(listWords, res)
		end
	end	
	return listWords
end

function randomValueGet(wordList)
	local newList =  wordList[math.random(#wordList)]
	return newList
end

function returnValuesRandom(maxWords, lengthWord)
	local chosedGenereted = choseRange(maxWords, lengthWord)
	print('Your list genereted :', chosedGenereted)
	print('Set your trys (max trys 5):')
	local trys = io.read()
	local realValue = randomValueGet(chosedGenereted)
	if trys <= 5 then
		for i=1,trys do
			io.write('Your trys :', i)
			io.write('Type word :')
			local word = io.read(lengthWord)
				if word == realValue then
					if i == 1 then
						io.write('WOoW fist correct ! value:', realValue)
						break
					end
					io.write('correct ! value: ', realValue)
					break
				elseif i == trys then
					print('NO end trys! Sorry')
				else 
					print('NO it´s not that')
				end
		end
	end	

end
