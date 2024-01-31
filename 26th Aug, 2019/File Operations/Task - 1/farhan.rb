INPUT_FILE_NAME="farhan_input.txt"
COMPRESSED_FILE_NAME="farhan_compressed.txt"
DECOMPRESSED_FILE_NAME="farhan_decompressed.txt"

def writeDataInFile(data,fileName)
    aFile = File.new(fileName, "r+")
    if aFile
        aFile.syswrite(data)
    else puts "Unable to open file!"
    end
end

def characterCount(subString)
    oldChar=subString[0]
    charCount=1
    counterString=""
    for i in 1..subString.length-1 do
        if oldChar.match(subString[i])
            charCount+=1
            temp=charCount.dup
        else
              counterString+=charCount.to_s+oldChar
              oldChar=subString[i]
              charCount=1
         end
    end
    return counterString+=" "
end

def compressor(string)
     startPosition=0
     finalResult=""
    loop do
        spacePosition=string.index(' ',startPosition)
        if spacePosition==nil
            finalResult+=characterCount(string[startPosition..string.length].to_s+" ")
            writeDataInFile(finalResult,COMPRESSED_FILE_NAME)
            break
        else
            finalResult+=characterCount(string[startPosition..spacePosition].to_s) 
            startPosition=spacePosition+1
        end  
    end 
end

# def decompressor(string)
#     startPosition=0
#     finalResult=""
#     loop do
#         spacePosition=string.index(' ',startPosition)
#         if spacePosition==nil
#             finalResult+=characterCount(string[startPosition..string.length].to_s+" ")
#             writeDataInFile(finalResult,COMPRESSED_FILE_NAME)
#             break
#         else
#             finalResult+=characterCount(string[startPosition..spacePosition].to_s) 
#             startPosition=spacePosition+1
#         end  
#     end 
# end


def readdataFromFile(filename,whichFile)
    if File.exists?(fileName)
        if File.open(fileName)
            temp=""
           IO.foreach(fileName){|block|temp+=block}
           if whichFile.to_i==1
            compressor temp.to_s
        else
            decompressor temp.to_s
        else puts "Unable to open file!"
        end
    else
        puts "File not found"
    end
end



