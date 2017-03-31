# Given an array of words and a length L, format the text such that each line has exactly L characters and is fully justified on both the left and the right. Words should be packed in a greedy approach; that is, pack as many words as possible in each line. Add extra spaces when necessary so that each line has exactly L characters.

# Extra spaces between words should be distributed as evenly as possible. If the number of spaces on a line does not divide evenly between words, the empty slots on the left will be assigned more spaces than the slots on the right. For the last line of text and lines with one word only, the words should be left justified with no extra space inserted between them.

# Example

# For
# words = ["This", "is", "an", "example", "of", "text", "justification."]
# and L = 16, the output should be

# textJustification(words, L) = ["This    is    an",
#                                "example  of text",
#                                "justification.  "]

def textJustification(words, l)
    currLen = 0
    i = 0
    currLine = []
    result = []
    while i < words.length
        if currLen + currLine.length + words[i].length <= l
            currLen += words[i].length
            currLine << words[i]
            i += 1
        else
            betw = currLine.length > 1 ? (l - currLen) / (currLine.length - 1) : 0
            extra = currLine.length > 1 ? (l - currLen) % (currLine.length - 1) : l - currLine[0].length
            
            extra.times do |e|
                currLine[e % currLine.length] += " "
            end
            result << currLine.join(" " * betw)
            
            currLine = []
            currLen = 0
        end
    end
    if currLine
        string = currLine.join(" ")
        string += " " * (l - string.length)
        result << string
    end
    result
end