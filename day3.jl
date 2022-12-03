function read_from_txt(filename)
    file = open(filename)
    lines = readlines(file)
    close(file)
    return lines
end

"a" == "A"
