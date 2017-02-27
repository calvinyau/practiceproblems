# Given an array of integers, every element appears twice except for one. Find that single one.

def single_number(nums)
    hash = {}
    nums.each do |num|
        hash[num] ? hash[num] += 1 : hash[num] = 1
    end
    hash.keys.each do |i|
        return i if hash[i] == 1
    end
    0
end
