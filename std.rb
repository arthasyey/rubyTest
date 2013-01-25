def std(array)
    sum = 0.0
    sumSqures = 0.0

    if array.respond_to?("each")
        if array.length == 0
            puts "Input is empty array"
            return 0.0
        end
        array.each do |elem|
            if !elem.is_a? Numeric
              puts "Element #{elem} is not a number, abort"
              return 0.0 / 0.0
            end
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
        puts "Input #{array} is not an array, abort"
        return 0.0 / 0.0
    end
end


if __FILE__ == $0
    array = nil
    puts std(nil)

    array = []
    puts std(array)

    array = [1, 1, 1]
    puts std(array)

    array = [1, 2, 3]
    puts std(array)

    array = 1
    puts std(array)
    
    array = [1, "b", "c"]
    puts std(array)

end
