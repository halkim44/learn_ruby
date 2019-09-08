#write your code here
def translate sentence
	sentenceArr =sentence.split(' ')
	sentenceArr.map! do |word|
		vowel = ['a', 'e', 'i', 'o', 'u']
		history = ""
		while vowel.find_index(word[0]) == nil or history + word[0] == 'qu'
			first = word[0]
			word[0] = ''
			word.insert(-1, first)
			if first == 'q'
				history = 'q'
			else
				history = ''
			end
		end
		word += 'ay'
	end
	sentenceArr.join(' ')
end


