class Game
    attr_reader :min, :max, :secret_guess, :live, :name
    
    def initialize(min = nil,max = nil, name)
        @min = min
        @max = max
        @secret_guess = rand(@min..@max)
        @live = ((@min..@max).size.to_f/2).ceil
        @play = true
        @name = name
    end
    
    def hint(guess)
        if guess > secret_guess
            puts 'Number too big'
        elsif guess == secret_guess
            puts 'Correct guess!!!'
        else
            puts 'Number too small'
        end
    end

    def live_update
        puts "In this game, you will have #{live} lives"
    end
    
    def game_on
        live_update
        while @play
            puts
            puts "I am thinking of a between #{min} and #{max}"
            puts "Enter a Number"
            guess = gets.chomp.to_i
            hint(guess)
            puts "_ _ _ _ _ _"
            puts
            winner(guess)
        end
        
    end

    def winner(guess)
        if secret_guess == guess and live >= 0
        puts "#{name} win!!!"
            @play = false
        elsif secret_guess != guess and live > 0
            #Here we are not re-assign (even if we use a writer method), we are performing an operatio
            #hence why we didn't use 'live' but @live
            @live -= 1
        puts "#{name} have #{live} lives remaining"
             
        else
        puts "#{name} lose"
           @play = false
       end
    end   
end
# puts "Welcome, in this game, you input 2 numbers(max & min)"
# puts "You try to get the number i am thinking of"
# puts "Enter a maximum number for your RANGE"
# max = gets.chomp.to_i
# puts "Enter a minimum number for your RANGE"
# min = gets.chomp.to_i
# secret_guess = ''
# 1.times do
#     secret_guess = rand(min..max)
# end
# live = 3

# game_on = true
# while game_on
#         puts "Input a number between #{min} and #{max}"
#         guess = gets.chomp.to_i
#         p secret_guess
#     if secret_guess.to_i == guess and live >= 0
#         puts "You win"
#         game_on = false

#     elsif live == 0 && secret_guess.to_i != guess
#             puts "You lose"
#             game_on = false
                
#     elsif secret_guess.to_i != guess && live <=3
#     live -= 1
#     puts "You have #{live} lives remaining"
    
#     end    
# end
