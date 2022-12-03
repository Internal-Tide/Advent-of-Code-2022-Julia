function read_from_txt(filename)
    file = open(filename)
    lines = readlines(file)
    close(file)
    return lines
end

input = read_from_txt("/mnt/c/Users/tianzhiwei/Desktop/\
    advent of code/day3.txt")

# Part1
function part_1(input)
    score_dict = Dict("a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6,
        "g" => 7, "h" => 8, "i" => 9, "j" => 10, "k" => 11, "l" => 12,
        "m" => 13, "n" => 14, "o" => 15, "p" => 16, "q" => 17, "r" => 18,
        "s" => 19, "t" => 20, "u" => 21, "v" => 22, "w" => 23, "x" => 24,
        "y" => 25, "z" => 26,
        "A" => 27, "B" => 28, "C" => 29, "D" => 30, "E" => 31, "F" => 32,
        "G" => 33, "H" => 34, "I" => 35, "J" => 36, "K" => 37, "L" => 38,
        "M" => 39, "N" => 40, "O" => 41, "P" => 42, "Q" => 43, "R" => 44,
        "S" => 45, "T" => 46, "U" => 47, "V" => 48, "W" => 49, "X" => 50,
        "Y" => 51, "Z" => 52)
    sum = 0
    for lines in input
        a = split(lines, "")
        for char in a[1:Int(end / 2)]
            if char in a[Int(end / 2)+1:end]
                sum += score_dict[char]
                break
            end
        end
    end
    sum
end

part_1(input)

# Part2
function part_2(input)
    score_dict = Dict("a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6,
        "g" => 7, "h" => 8, "i" => 9, "j" => 10, "k" => 11, "l" => 12,
        "m" => 13, "n" => 14, "o" => 15, "p" => 16, "q" => 17, "r" => 18,
        "s" => 19, "t" => 20, "u" => 21, "v" => 22, "w" => 23, "x" => 24,
        "y" => 25, "z" => 26,
        "A" => 27, "B" => 28, "C" => 29, "D" => 30, "E" => 31, "F" => 32,
        "G" => 33, "H" => 34, "I" => 35, "J" => 36, "K" => 37, "L" => 38,
        "M" => 39, "N" => 40, "O" => 41, "P" => 42, "Q" => 43, "R" => 44,
        "S" => 45, "T" => 46, "U" => 47, "V" => 48, "W" => 49, "X" => 50,
        "Y" => 51, "Z" => 52)
    sum = 0
    for i = 1:3:length(input)-2
        a = split(input[i], "")
        b = split(input[i+1], "")
        c = split(input[i+2], "")
        for char in a
            if (char in b) && (char in c)
                sum += score_dict[char]
                break
            end
        end
    end
    sum
end


part_2(input)