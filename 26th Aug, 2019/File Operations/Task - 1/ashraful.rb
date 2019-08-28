
def main
  require 'pathname'
  path = Pathname.new(__FILE__)
  temp_path = path.realpath # get working file full directory
  this_file_name_length = File.basename(temp_path).length #working filename's length
  slice_range = (temp_path.to_s.length-this_file_name_length)-1 #slice for getting the directory for work
  working_directory = temp_path.to_s.slice(0..slice_range)
  input_file_path = working_directory + "ashraful_input.txt" # build input file directory
  compressed_file_path = working_directory + "ashraful_compressed.txt"
  decompressed_file_path = working_directory + "ashraful_decompressed.txt"

  puts "File Compress :"
  puts compress_file(input_file_path,compressed_file_path)
  puts "File Decompress :"
  puts decompress_file(compressed_file_path,decompressed_file_path)
  puts "Status : Done"
end

def compress_file(i_file_path,o_file_path)
  compressed_file_content = ''
  #read file and compress
  File.open(i_file_path).each do |line|
     characters = line.split(//) #string to array
     temp_character = ''
     same_character = 1

     characters.each_with_index do |character, index|
       if character != ' ' && character != "." && character != "," && character != "?" && character != "\n"
         if temp_character == character
           same_character = same_character + 1
           if characters[index] != characters[index+1]
             compressed_file_content = compressed_file_content + same_character.to_s + character
             same_character = 1
           end
         else
           if characters[index] != characters[index+1]
             same_character = 1
             compressed_file_content = compressed_file_content + same_character.to_s + character
           end
         end
       else
         compressed_file_content = compressed_file_content + character
       end
       temp_character = character
     end
  end

  write_file(o_file_path,compressed_file_content)
  file_properties(i_file_path,o_file_path)
end

def decompress_file(i_file_path,o_file_path)
  decompressed_file_content = ''
  #read file and compress
  File.open(i_file_path).each do |line|
     words = line.split(' ') #string to array
     words.each_with_index do |word,wi|
       characters = word.split(//)
       character_chank = characters.each_slice(2).to_a
       character_chank.each_with_index do |character_chank_element,ccei|
         if character_chank_element.length == 2
           x = character_chank_element[0].to_i
           character = character_chank_element[1]
           i = 0
           while i < x  do
             decompressed_file_content = decompressed_file_content + character
             i +=1
           end
         else
           decompressed_file_content = decompressed_file_content + character_chank_element[0]
         end
       end
       decompressed_file_content = decompressed_file_content + " "
     end

  end

  write_file(o_file_path,decompressed_file_content)
  file_properties(i_file_path,o_file_path)
end

def write_file(file_path,file_content)
  File.open(file_path,"w") do |line|
    line.puts file_content
  end
end

def file_properties(i_file_path,o_file_path)
  i_file_size = File.size(i_file_path)
  o_file_size = File.size(o_file_path)

  file_status = ''
  if i_file_size > o_file_size
    file_status = 'Decreased'
  else
    file_status = 'Increased'
  end

  return "Input file size : #{i_file_size}\nOutput file size : #{o_file_size}\nFile size : #{file_status}\n\n"
end
main
