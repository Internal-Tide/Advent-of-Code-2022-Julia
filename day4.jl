function read_from_txt(filename)
    file = open(filename)
    lines = readlines(file)
    close(file)
    return lines
end

input = read_from_txt("input/day4.txt")

# Part1
function part_1(input)
    sum = 0
    for i in input
        a = split(i, (',', '-'))
        if (Set(parse(Int, a[1]):parse(Int, a[2])) ⊆ Set(parse(Int, a[3]):parse(Int, a[4]))) ||
           (Set(parse(Int, a[1]):parse(Int, a[2])) ⊇ Set(parse(Int, a[3]):parse(Int, a[4])))
            sum += 1
        end
    end
    sum
end

part_1(input)

# Part2
function part_2(input)
    sum = 0
    for i in input
        a = split(i, (',', '-'))
        if !isempty(Set(parse(Int, a[1]):parse(Int, a[2])) ∩ Set(parse(Int, a[3]):parse(Int, a[4])))
            sum += 1
        end
    end
    sum
end

part_2(input)




