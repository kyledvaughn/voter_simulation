#Menu File

require "./world.rb"

    puts "Welcome to Voter-Sim"

def back
    puts "Hit any key to return to the Main Menu"
    gets.chomp
    menu
end

def menu
    
    print "What would you like to do?: \n\(C\)reate, \(L\)ist, \(U\)pdate, or \(D\)elete: "
    option = gets.chomp
    case option
        when "c"
            print "Would you like to create a \(V\)oter or a \(P\)olitician?: "
            create = gets.chomp
            case create
            when "v"
                create = "Voter"
                print "Enter the name of the Voter: "
                name = gets.chomp.capitalize
                print "Politics? \n\(L\)iberal, \(C\)onservative, \(T\)ea Party, \(S\)ocialist, or \(N\)eutral: "
                politics = gets.chomp.capitalize
                world.create_voter(name, politics)
                back
            when "p"
                create = "Politician"
                puts "Enter the name of the Politician: "
                name = gets.chomp.capitalize
                puts "Party? \n \(D\)emocrat or \(R\)epublican"
                party = gets.chomp
                world.create_politician(name, party)
                back
            else
                menu
            end          
        when "l"
        puts "Would you like a list of the \(V\)oters, \(P\)oliticians, or \(b\)oth? \n : "
        list = gets.chomp
        case list
        when "v"
            list_voters
            back
        when "p"
            list_politicians
            back
        when "b"
            list_voters
            list_politicians
            back
        end

        when "u"
            puts "Would you like to update a \(V\)oter or a \(P\)olitician record"
            option = gets.chomp
            case option
            when "v"
                puts "Enter the name of the individuals file you would like to update \n : "
                original = gets.chomp
                puts "Would you like to update the \(n\)ame or \(p\)arty?: "
                change = gets.chomp
                case change
                when "n"
                    print "What is the new name?: "
                    new = gets.chomp
                    world.update_voter(original, change, new)
                when "p"
                    puts "What is the new politics? \n\(L\)iberal, \(C\)onservative, \(T\)ea Party, \(S\)ocialist, or \(N\)eutral: "
                    new = gets.chomp
                    world.update_voter(original, change, new)
                back                 
            end

            when "p"
                puts "Enter the name of the individuals file you would like to update \n : "
                original = gets.chomp
                puts "Would you like to update the \(n\)ame or \(p\)arty?: "
                change = gets.chomp
                case change
                when "n"
                    print "What is the new name?: "
                    new = gets.chomp
                    world.update_politician(original, change, new)
                when "p"
                    puts "What is the new party? \n\(D\)emocrat or \(R\)epublican: "
                    new = gets.chomp
                    world.update_politician(original, change, new)
                back
            end


        when "d"
            puts "Would you like to delete a \(V\)oter or a \(P\)olitician record"
            option = gets.chomp
            case option
            when "v"
                puts "Enter the name of the individuals file you would like to delete \n : "
                name = gets.chomp
                world.delete_voter(name)
                back
            when "p"
                puts "Enter the name of the individuals file you would like to delete \n : "
                name = gets.chomp
                world.delete_politician(name)
                back
            end
        end
        back
    end
end

menu