###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # try to convert to integer, and skip if not integer
    begin
        i_arg = Integer(arg)
    rescue ArgumentError
        next
    end

    # insert result at the right position
    is_inserted = false
    i = 0
    l = result.size
    while !is_inserted && i < l do
        if result[i] < i_arg
            i += 1
        else
            result.insert(i - 1, i_arg)
            is_inserted = true
            break
        end
    end
    result << i_arg if !is_inserted
end

puts result
