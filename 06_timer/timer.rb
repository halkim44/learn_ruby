class Timer
  #write your code here
  def initialize
  	@seconds = '00'
  	@minutes = '00'
  end

  def seconds
  	@seconds.to_i
  end
  
  def seconds=(num)
  	minutes = 0
  	hours = 0
  	while num >= 60
  		num -= 60
  		minutes += 1
  	end
  	while minutes >= 60
  		hours += 1
  		minutes -= 60
  	end

  	num = '00' + num.to_s
  	@seconds = num[-2] + num[-1]

  	minutes = '00' + minutes.to_s
  	@minutes = minutes[-2] + minutes[-1]

  	hours = '00' + hours.to_s
  	@hours = hours[-2] + hours[-1]
  end
 
  def time_string
  	"#{@hours}:#{@minutes}:#{@seconds}"
  end
end
