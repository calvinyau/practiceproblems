def reverse_string(s)
    half = s.length / 2
    half.times {|i| s[i], s[-i-1] = s[-i-1], s[i] }
    s
end
