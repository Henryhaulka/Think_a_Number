require_relative "../lib/play"
class Player
    def name_checks(name)
      !name.empty?
    end
end
  
        puts "Welcome, in this game, you input 2 numbers(max & min)"
        puts "You try to get the number i am thinking of"
        puts 'Enter a valid name'
        valid = false
        until valid
            name = gets.chomp
            valid = Player.new.name_checks(name)
            puts "Name should not be blank" if !valid
         end
          
        puts "Enter a maximum number for your RANGE"
        max = gets.chomp.to_i
        puts "Enter a minimum number for your RANGE"
        min = gets.chomp.to_i



Game.new(min,max, name).game_on