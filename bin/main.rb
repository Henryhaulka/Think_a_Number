require_relative "../lib/play"

        puts "Welcome, in this game, you input 2 numbers(max & min)"
        puts "You try to get the number i am thinking of"
        puts "Enter a maximum number for your RANGE"
        max = gets.chomp.to_i
        puts "Enter a minimum number for your RANGE"
        min = gets.chomp.to_i


Game.new(min,max).game_on