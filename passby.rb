
def no_mutate(arr)
	arr.uniq
end

def mutate(arr)
	arr.uniq!
end

numbers = [1, 2, 3, 3, 4, 5, 5]
puts numbers.to_s

no_mutate(numbers)
puts numbers.to_s # no change

mutate(numbers)
puts numbers.to_s # change