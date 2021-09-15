local b = {}

b.find = function(_, list, index, val)
    local lower = 1
    local upper = #list
    local found = false

    while not found do
        local check = lower + math.floor(((upper - lower) / 2) + 0.5)

        if list[check][index] == val then
            found = check
            break
        end

        if list[check][index] < val then
            upper = check
        end

        if list[check][index] > val then
            lower = check
        end

        if upper == lower then
            break
        end
    end

    return found
end

b.findInsert = function(_, list, index, val)
    local lower = 1
    local upper = #list
    local found = false

    if list[upper][index] >= val then
        found = upper + 1
    end
    if list[1][index] <= val then
        found = 1
    end

    while not found do
        local check = (lower + math.floor(((upper - lower) / 2) + 0.5))
        
        if list[check][index] == val then
            found = check+1
            break
        end

        if list[check][index] > val then
            lower = check
            if list[check + 1][index] < val then
                upper = check + 1
                lower = upper
            end
        end

        if list[check][index] < val then
            upper = check
            if list[check - 1][index] > val then
                lower = check
            end
        end

        if upper == lower then
            found = upper
            break
        end
    end

    local e = list[found + 1] and list[found + 1][index] or 'End'
    return found
end

b.binarySearch = b
return b