# Data Structures

#Arrays
#play [52, 55, 59][1]
#array[notes][index]
#If you select an index that is outside of range, it will return nil

#Random Notes within a scale
#use_synth :chiplead
#loop do
#play choose(chord(:E3, :minor)), release: 0.3, cutoff: rrand(60, 120)
#sleep 0.25
#end

#Increment through an index with a count variable
#counter = 0 #Index counter
#notes = [52, 55, 59]
#play notes[counter]
#sleep 0.25
#counter = (inc counter) #Increase by 1 increment
#play notes[counter]

#Shorten sleep time with a counter (decrements of 0.10)
#notes = [52, 55, 59]
#counter = 0.25
#play notes[0]
#sleep counter
#counter -= 0.10
#play notes[0]
#sleep counter
#counter -= 0.10
#play notes[0]

#Rings are indexes that can be negative or larger than the ring size
(ring 52, 55, 59)[0] #=> 52
(ring 52, 55, 59)[1] #=> 55
(ring 52, 55, 59)[2] #=> 59
(ring 52, 55, 59)[3] #=> 52
(ring 52, 55, 59)[-1] #=> 59
#Scales and chords are rings

#A Ring is a constructor
# Range sets a start and end point, and step size
#bools 1 and 0 for booleans
#knit for knitting a sequence of repeated values
#spread creates a ring of bools with a Euclidean distribution

#Ring Chain Commands (methods)

#.reverse # returns a reversed version of the ring 
#.sort # creates a sorted version of the ring 
#.shuffle # creates a shuffled version of the ring 
#.pick(3) # returns a ring with the results of calling .choose 3 times 
#.pick # similar to .pick(3) only the size defaults to the same as the original ring 
#.take(5) # returns a new ring containing only the first 5 elements 
#.drop(3) # returns a new ring with everything but the first 3 elements 
#.butlast # returns a new ring with the last element missing 
#.drop_last(3) # returns a new ring with the last 3 elements missing 
#.take_last(6)# returns a new ring with only the last 6 elements 
#.stretch(2) # repeats each element in the ring twice 
#.repeat(3) # repeats the entire ring 3 times 
#.mirror # adds the ring to a reversed version of itself 
#.reflect # same as mirror but doesn’t duplicate middle value 
#.scale(2) # returns a new ring with all elements multiplied by 2 (assumes ring contains numbers only) 