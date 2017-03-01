def almostIncreasingSequence(sequence)
    prev = [sequence[0], sequence[1]].min
    wrong = 0
    (sequence.length - 1).times do |num|
        if prev < sequence[num + 1]
            prev = sequence[num + 1]
        else
            wrong += 1
            return false if wrong == 2
        end
    end
    true
            
   
end