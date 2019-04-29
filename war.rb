def generate_card
    n = rand(0..12)
    @cards.each_with_index do |card, i|
        if i == n
            return card
        end
    end
end

def war
    @cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
    user_count = 26
    ai_count = 26
    puts "This is war."
    while user_count > 0 && ai_count > 0
        puts "Press Enter to play a card, sire. Or press q to quit."
        input = gets.chomp
        if input == "q"
            puts user_count
            break
        end
        user_card = generate_card
        ai_card = generate_card
        if user_card == 11
            puts "Your card: J"
        elsif user_card == 12
            puts "Your card: Q"
        elsif user_card == 13
            puts "Your card: K"
        elsif user_card == 14
            puts "Your card: A"
        else
            puts "Your card: " + user_card.to_s
        end
        if ai_card == 11
            puts "Your opponent's card: J"
        elsif ai_card == 12
            puts "Your opponent's card: Q"
        elsif ai_card == 13
            puts "Your opponent's card: K"
        elsif ai_card == 14
            puts "Your opponent's card: A"
        else
            puts "Your opponent's card: " + ai_card.to_s
        end
        
        if user_card > ai_card
            puts "Win!"
            user_count += 1
            ai_count -= 1
        elsif ai_card > user_card
            puts "YOU ARE DEFEATED!"
            ai_count += 1
            user_count -= 1
        else
            puts "Draw!"
        end
    end
    if user_count > 26
        puts "YOU ARE WINNING THE WAR!!!!!!!"
    else
        puts "ALL HOPE IS NOT YET LOST."
    end
end

war