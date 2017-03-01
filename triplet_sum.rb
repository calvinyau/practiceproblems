def tripletSum(x, a)
    hash = {}
    a.each do |num|
        if hash[num]
            hash[num] += 1 
        else
            hash[num] = 1
        end  
    end
    
    (a.length - 1).times do |i|
        ((i+1)...a.length).each do |j|
            remainder = x - a[i] - a[j]
            next if (remainder == a[i] || remainder == a[j]) && hash[remainder] < 2
            return true if hash[x - a[i] - a[j]]
        end
    end
    false
end