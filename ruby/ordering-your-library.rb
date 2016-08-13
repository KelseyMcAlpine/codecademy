def alphabetize(arr, rev=false)
    if rev == true
        arr.sort!
        arr.reverse!
    else
        arr.sort!
    end
end

numbers = [2,6,8,4]

puts alphabetize(numbers, rev=true)
