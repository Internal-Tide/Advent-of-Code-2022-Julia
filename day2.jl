function read_from_txt(filename)
    file = open(filename)
    lines = readlines(file)
    close(file)
    return lines
end

# DAY2
#  A/X ROCK  1
#  B/Y PAPER  2                
#  C/Z SCISSORS  3           Z => Y => X => Z

# Part1
filename2 = "input/day2.txt"
input = read_from_txt(filename2)

function part1(input)
    score_dic = Dict("X" => 1, "Y" => 2, "Z" => 3,
        "A" => 1, "B" => 2, "C" => 3)
    sum = 0
    for i in input
        (x, y) = split(i)
        if (score_dic[y] > score_dic[x]) && (score_dic[y] - score_dic[x] == 1)
            sum = 6 + score_dic[y] + sum
        elseif (score_dic[y] > score_dic[x]) && (score_dic[y] - score_dic[x] == 2)
            sum = 0 + score_dic[y] + sum
        elseif score_dic[y] == score_dic[x]
            sum = 3 + score_dic[y] + sum
        elseif (score_dic[y] < score_dic[x]) && (score_dic[x] - score_dic[y] == 1)
            sum = 0 + score_dic[y] + sum
        elseif (score_dic[y] < score_dic[x]) && (score_dic[x] - score_dic[y] == 2)
            sum = 6 + score_dic[y] + sum
        end
    end
    sum
end
part1(input)

# Part2

function part2(input)
    score_dic = Dict("A" => 1, "B" => 2, "C" => 3)
    sum = 0
    for i in input
        (x, y) = split(i)
        if y == "X" && score_dic[x] >= 2
            sum += 0 + score_dic[x] - 1
        elseif y == "X" && score_dic[x] == 1
            sum += 0 + 3
        elseif y == "Y"
            sum += 3 + score_dic[x]
        elseif y == "Z" && score_dic[x] <= 2
            sum += 6 + score_dic[x] + 1
        elseif y == "Z" && score_dic[x] == 3
            sum += 6 + 1
        end
    end
    sum
end
part2(input)


for i in (eachsplit(input[1]))
    println(i)
end
