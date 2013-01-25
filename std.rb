def std(array)
    sum = 0.0
    sumSqures = 0.0
    if array.respond_to?("each")
        array.each do |elem|
            sum += elem
            sumSqures += elem * elem
        end
        mean = sum / array.length
        variance = 0.0
        array.each do |elem|
            variance += (elem - mean) ** 2
        end
        return Math.sqrt(variance / array.length)
    else
        puts "Input #{@array} is not an array, abort"
        return -1
    end
end


if __FILE__ == $0
    array = [1, 1, 1]
    puts std(array)

    array = [1, 2, 3]
    puts std(array)

    array = 1
    puts std(array)
    
    array = ["a", "b", "c"]
    puts std(array)
end
