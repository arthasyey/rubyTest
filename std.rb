def std(array)
    sum = 0
    sumSqures = 0
    array.each do |elem|
        sum += elem
        sumSqures += elem * elem
    end
    mean = sum / array.length
    variance = 0
    array.each do |elem|
        variance += (elem - mean) ** 2
    end
    return Math.sqrt(variance / array.length)
end
