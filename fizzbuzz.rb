def fizz_buzz(n)
    arr = []
    (1..n).each do |i|
        str = ""
        if i % 3 == 0
            str += "Fizz"
        end
        if i % 5 == 0
            str += "Buzz"
        end
        str.empty? ? arr << i.to_s : arr << str
    end
    arr
end
