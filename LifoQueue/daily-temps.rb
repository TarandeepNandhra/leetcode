# Given a list of daily temperatures temperatures, return a list such that, for each day in the input,
# tells you how many days you would have to wait until a warmer temperature. 

# If there is no future day for which this is possible, put 0 instead.

# For example, given the list of temperatures 
# temperatures = [73, 74, 75, 71, 69, 72, 76, 73], 
# output should be [1, 1, 4, 2, 1, 1, 0, 0].

# @param {Integer[]} temperatures
# @return {Integer[]}
def daily_temperatures(temperatures)
    days_to_wait = []
    for i in 0 ... temperatures.length
        for j in i ... temperatures.length
            if temperatures[i] < temperatures[j]
                days_to_wait << j - i 
                break
            end
        end
        days_to_wait << 0 unless days_to_wait[i] # returns nil if not defined
    end
    days_to_wait
end

# too slow for large inputs

# Idea is that either next one is larger or smaller
# If smaller, add onto the stack
# If larger, pop off the stack and keep a counter to keep track of length.