#World Class File

require "./person.rb"
require "./voter.rb"
require "./politician.rb"

class World 
    attr_accessor :voters, :politicians
    
    def initialize
        @voters = []
        @politicians = []
    end
    
    def create_voter(name, politics)
        person = Voter.new(name, politics)
        @voters.push(person) 
    end
    
    def create_politician(name, party)
        person = Politician.new(name, party)
        @politicians.push(person)
    end
    
    def list_voters
        result = ""
        @voters.each do |v|
            result += "Voter, #{v.name}, #{v.politics}"
        end
        result
    end
    
    def list_politicians
        result = ""
        @politicians.each do |p|
            result += "Politician, #{p.name}, #{p.party}"
        end
        result
    end
    
    def update_voter(original, change, new)
        person = nil 
        @voters.each do |p| 
            if p.name == original
              person = p
            end  
        end

        if person.nil? 
            "This person is not in our system" 
        else
            case change 
            when "name" 
                person.name = new
            when "politics" 
                person.politics = new
            end
        end
    end
    
    def update_politician(original, change, new)
        person = nil 
        @politicians.each do |p| 
            if p.name == original
              person = p
            end  
        end

        if person.nil? 
            "This person is not in our system" 
        else
            case change 
            when "name" 
                person.name = new 
            when "party" 
                person.party = new
            end
        end
    end
    
    def delete_voter(name)
        person = nil
        @voters.each do |v|
            if v.name == name
                person = v
            end
        end
        if person.nil?
            return "That Voter is not in our records"
        else
            @voters.delete(person)
        end
    end
    
    def delete_politician(name)
        person = nil
        @politicians.each do |p|
            if p.name == name
                person = p
            end
        end
        if person.nil?
            return "That Polician is not in our records"
        else
            @politicians.delete(person)
        end
    end
    
end