# 1. You know this!
5.times do
    puts "I'm a block!"
end


# 2. Collect 'em all 
fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
doubled_fibs = fibs.collect {|n| n*2}


# 3. Learning to Yield
def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end
block_test { puts ">>> We're in the block!" }


# 4. Yielding with Parameters
def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end
yield_name("Eric") { |n| puts "My name is #{n}." }
yield_name("Kelsey") { |n| puts "My name is #{n}."}


# 5. Try it Yourself
def double(n)
    yield n
end
double(16) {|n| puts n*2}


# 6. Keeping Your Code DRY
multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end
(1..100).to_a.select(&multiples_of_3)

# 7. Proc Syntax
floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
round_down = Proc.new {|x| x.floor}
ints = floats.collect(&round_down)


# 8. Why Procs?
group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

over_4_feet = Proc.new {|height| height>= 4}

can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)
can_ride_3 = group_3.select(&over_4_feet)


# 9. Create your Own
def greeter
    yield
end

phrase = Proc.new do
    puts"Hello there!"
end

greeter(&phrase)


# 10. Call me Maybe
hi = Proc.new {puts "Hello!"}
hi.call


# 11. Symbols Meet Procs
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
strings_array = numbers_array.collect(&:to_s)


# 12. The Ruby Lambda
def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })


# 13. Lambda Syntax
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda {|x| x.to_sym}

symbols = strings.collect(&symbolize)


# 14. Lambdas vs. Procs
def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda


# 15. Now You Try!
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda {|symbols| symbols.is_a? Symbol}
symbols = my_array.select(&symbol_filter)


# 17. Been Around the Block a Few Times
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

ints = odds_n_ends.select {|n| n.is_a? Integer}


# 18. Creating a Proc
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

under_100 = Proc.new {|n| n<100}


# 19. Passing your Proc to a Method
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

under_100 = Proc.new {|n| n<100}
youngsters = ages.select(&under_100)


# 20. Creatinga a Lambda
crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}

first_half = lambda {|x,y| y<'M'}


# 21. Passing your Lambda to a Method
crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}

first_half = lambda {|x,y| y<'M'}
a_to_m = crew.select(&first_half)
