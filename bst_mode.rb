def find_mode(root)
    hash = {}
    rec_find(root, hash)
    most = 0
    mode = []
    hash.keys.each do |k|
        if hash[k] > most
            mode = [k]
            most = hash[k]
        elsif hash[k] == most
            mode << k
        end
    end
    mode
end

def rec_find(root, hash)
    return if !root
    hash[root.val] ? hash[root.val] += 1 : hash[root.val] = 1
    rec_find(root.left, hash)
    rec_find(root.right, hash)
end