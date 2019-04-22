#Create a class called GuessingGame that will pick a random number and allow someone to guess the number.

#The initialize method should create an instance variable to store the answer, which is a random number between 1 and 100.
#The class should have a method called guess that takes in one argument (the person's guess). It should return the string "low" if the guess is too low, "high" if the guess is too high, and "correct" if the guess is equal to the answer.
#The class should also have a method called reset_answer, which will change the answer to a new random number between 1 and 100.

class GuessingGame
    def initialize
        @random_number = rand(1..100)
    end
    def guess (n)
        if n.to_i > @random_number
            return "high"
        elsif n.to_i < @random_number
            return "low"
        else
            "correct"
        end
    end
    def reset_answer
        @random_number = rand(1..100)
    end
end





game = GuessingGame.new
p game.guess(5)  # this will return "low", "high", or "correct" depending on the random answer
p game.guess(10)  # this will return "low", "high", or "correct" depending on the random answer
p game.guess(32)  # this will return "low", "high", or "correct" depending on the random answer
game.reset_answer # this will change the answer to a new random number 
p game.guess(5)  # this will return "low", "high", or "correct" depending on the random answer