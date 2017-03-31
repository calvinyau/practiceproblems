def almostIncreasingSequence(sequence)
    count = 0
    (0...s.size-1).each do |i|
        count += 1 if sequence[i] >= sequence [i+1]
    end
    count == 1
end