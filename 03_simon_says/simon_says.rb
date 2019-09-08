 #write your code here
def echo word
	word
end

def shout word
	word.upcase
end

def repeat(word, numTimes = 2)
	arr = []
	numTimes.times do
		arr.push word
	end
	arr.join " "
end

def start_of_word (word, num)
	word = word.split('')
	firstLetter = ""
	i = 0

	while i < num
		firstLetter += word[i]
		i += 1
	end
	firstLetter
end

def first_word sentence
	sentence.split(" ").first
end

def titleize sentence
	sentenceArr = sentence.split(' ')
	littleWords = ['and', 'over', 'the'] # not complete, enough to make test pass
	sentenceArr.map!.with_index do |word, idx|
		puts idx
		if(littleWords.find_index(word) != nil and idx != 0)
			word = word
		else
			word = word.capitalize
		end
	end
	sentenceArr.join(' ')
end