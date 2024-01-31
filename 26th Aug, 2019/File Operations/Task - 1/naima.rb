# We're aware of file compressing technique. In this task, we're going to compress text file. 
# Compressing technique is goes like this below:
# -> aaamarr aamii = 3a1m1a2r 2a1m2i 
# unluckily sometimes file size increases instead of decreasing. But still, let's honor this technique anyway. 
# And we're going to write decompressor too.

# Input Output Format:
# you're going to work with files. Take any article from internet and save it as yourname_input.txt file. 
# your source code will be yourname.rb and the compressed output file will be yourname_compressed.txt and decompressed output will be yourname_decompressed.txt.
# your console should show a done message upon completion and show a verdict message showing File size is increased or decreased.

# This one is case sensitive, please be aware of that.

# you must through exceptions if file is not acceesible.

def compressor(line)
	temp = line[0]
	i = 1
	cnt = 1
	result = ""
	while i <= line.length
		if temp == line[i]
			cnt += 1
		else
			result += String(cnt) + temp
			temp = line[i]
			cnt = 1
		end
		i += 1
	end
	return result
end

def decompression(line)
	result2 = ""
	k = 0
	while k < line.length
		no = Integer(line[k])
		chr = line[k+1]
		i = 0
		while i < no
			result2 += chr
			i += 1
		end
		k += 2
	end
	return result2
end

str = File.read("naima_input.txt")
changed = compressor(str)
file = File.open("naima_compressed.txt","w+")
file.puts(changed)
final = decompression(changed)
file = File.open("naima_decompressed.txt","w+")
file.puts(final)
file.close
puts "Done"
if changed.length < final.length
	puts "Decreased"
elsif changed.length == final.length
	puts "Same"
else
	puts "Increased"
end