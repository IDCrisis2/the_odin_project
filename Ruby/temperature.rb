def ftoc(temp)
	new_temp = ((temp - 32) / 1.8).round
end

def ctof(temp)
	new_temp = (temp * 1.8 + 32).round(1)
end
