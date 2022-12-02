function read_from_txt(filename)
    file = open(filename)
    lines = readlines(file)
    close(file)
    return lines
end


# DAY1
filename1 = "/mnt/c/Users/tianzhiwei/Desktop/input.txt"
txt = readlines(filename1, keep=false)
# Part 1
data = Int[]
sum = 0
for i in txt
    if i == ""
        push!(data, sum)
        sum = 0
        continue
    else
        sum += parse(Int, i)
    end
end

findmax(data)
data

# Part 2
data_3 = sort(data)
Base.sum(data_3[end-2:end])