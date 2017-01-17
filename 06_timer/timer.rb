class Timer
  #write your code here
  attr_accessor :seconds
  def seconds
  	@seconds || 0
  end

  def time_string
  	seconds_left = @seconds
  	#divide seconds by 3600 to find hours
  	hours = seconds_left / 3600
  	#remove time devoted to hours from seconds left
  	seconds_left -= 3600*hours
  	#divide seconds by 60 to find minutes
  	minutes = seconds_left / 60
  	#remove time devoted to minutes from seconds left
  	seconds_left -= 60*minutes
  	#put hours, minutes, seconds in string
  	"#{padding(hours)}:#{padding(minutes)}:#{padding(seconds_left)}"
  end

  def padding number
  	padded_number = ""
  	if number == 0
  		padded_number = "00"
  	elsif number.to_s.length < 2
  		padded_number = "0#{number}"
	else
		padded_number = "#{number}"
	end
  	padded_number
  end
end
