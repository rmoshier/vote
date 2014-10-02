# Create a Vote class. An instance of the Vote class should have a question attribute and a results attribute.
# The question attribute should be a string that is passed in as an argument when the object is created.
# The result attribute should be a hash with keys of the given answers and value of the number of votes that key has receieved.

# vote = Vote.new("Who should run for president in 2016?")
# vote.cast("Hillary")
# vote.cast("Ada")
# vote.cast("Ada")
# vote.results # => {"Hillary" => 1, "Ada" => 2}

class Vote

  attr_accessor :question, :results

  def initialize(question)
    @question = question
    @results = {}
  end

  def cast(answer)
    if @results[answer] ==  nil
      @results[answer] = 1
    else
      @results[answer] += 1
    end
  end
end


  # def self.vote_cast_array(v) #puts votes into array
  #   vote_array = []
  #   v.each do |vote|
  #     vote_array << v
  #   end
  # end

  # def assign_vote_number #assigns vote number to votes in vote_cast_array
  # end
  #
  # def cast(c) #changes array into hash
  #   c.each do |key|
  #     @results["c"] = 1
  #   end
  # end

# a = Vote.new("Who should run?")
# a.cast("Ada")
# return vote_array

# grades = Hash.new
# grades["Dorothy Doe"] = 9

# string = "DIY Project:table restoration"
# hash = {}
# string.split(',').each do |pair|
#   key,value = pair.split(/:/)
#   hash[key] = value
# end
# puts hash.inspect
