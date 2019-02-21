class Person

attr_reader :name, :happiness, :hygiene
attr_accessor :bank_account

def initialize(name)
 @name = name
 @bank_account = 25
 @happiness = 8
 @hygiene = 8
end



# def name
#   @name
# end

def happiness=(happiness)
 @happiness = happiness

 if @happiness <= 10 && @happiness >= 0
   @happiness
 elsif @happiness < 0
   @happiness = 0
 else
   @happiness = 10
 end
end

# def hyg_limit
#   if @hygiene <= 10 && @hygiene >= 0
#     @hygiene
#   elsif @hygiene < 0
#     @hygiene = 0
#   else
#     @hygiene = 10
#   end
# end

def hygiene=(hygiene)
 @hygiene = hygiene
 # @hygiene = hyg_limit
 if @hygiene <= 10 && @hygiene >= 0
   @hygiene
 elsif @hygiene < 0
   @hygiene = 0
 else
   @hygiene = 10
 end
end



def clean?
 hygiene > 7
end

def happy?
 happiness > 7
end

def get_paid(amount)
 @bank_account += amount
 "all about the benjamins"
end

def take_bath
 @hygiene = @hygiene + 4
 self.hygiene=(@hygiene)

 "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out

 #@happiness = @happiness + 2
 # @hygiene = @hygiene - 3
 # self.happiness=(@happiness)
 # self.hygiene=(@hygiene)

 self.hygiene -= 3
 self.happiness += 2
 "♪ another one bites the dust ♫"
end


def call_friend(friend)
 # [friend, self].each {|o| o.happiness += 3 }
   friend.happiness += 3
   self.happiness += 3

   "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(friend, topic)
 if topic == "politics"
   friend.happiness -= 2
   self.happiness -= 2
   "blah blah partisan blah lobbyist"
 elsif topic == "weather"
   friend.happiness += 1
   self.happiness += 1
   "blah blah sun blah rain"
 else
   "blah blah blah blah blah"
 end
end


end
