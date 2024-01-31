# Write a Ruby program that shows the current date and time at the beginning. Then takes a string of words and prints the word which has the maximum repeatations. Write code in two different ways, 
# one is using STL hash another one using no STL (maybe bruteforce) and print which one is faster.

require 'date'
current_time =  DateTime.now
current_time.strftime "%d/%m/%Y %H:%M"
puts current_time
current_time.next_month.strftime "%d/%m/%Y %H:%M"

def withSTL(words)
	start = Float(Time.now)
	counts = Hash.new(0)
	for word in words
		counts[word] += 1
	end
	f_word = ""
	counts.sort{|a,b| b[1]<=>a[1]}.each { |elem|
		f_word = "#{elem[0]}"
		break
    }
    e = Float(Float(Time.now) - start)
    return f_word,e
end

def withoutSTL(words)
	start2 = Float(Time.now)
	num = words.length
	freq = Array.new(num,0)
	i = 0
	w1 = ""
	while i < num
		w1 = words[i]
		j = 0
		while j <= num
			if w1 == words[j] && i != j
				freq[i] = freq[i] + 1 
			end
			j = j + 1
		end
		i = i + 1	
	end 
	k = 0
	high = 0
	ind = 0
	while k < num
		if freq[k] >= high
			high = freq[k]
			ind = k
		end
		k = k + 1
	end
	e2 = Float(Float(Time.now) - start2)
	return words[ind], e2
end

str = gets.chomp
word = str.split(/[\s,]+/)
w1_time = withSTL(word)
w2_time = withoutSTL(word)
puts "Champion: " + w1_time[0]
puts "Bruteforce took: " + String(w2_time[1].round(4)) + "ms"
puts "Hash took: " + String(w1_time[1].round(4)) + "ms"
if w1_time[1] < w2_time[1]
	puts "verdict: Hash won"
else
	puts "verdict: Bruteforce won"
end