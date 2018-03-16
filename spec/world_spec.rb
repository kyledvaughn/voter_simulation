#World Spec File
require "./person.rb"
require "./voter.rb"
require "./politician.rb"
require "./world.rb"

describe World do
    
    it "reports that it is a World" do
        world = World.new()
        expect(world).to be_a(World)
    end
    
    it "can create Voters" do
        world = World.new()
        world.create_voter("John Doe", "Nuetral")
        expect(world.voters.count).to eq(1)
    end
    
    it "can create Politicians" do
        world = World.new()
        world.create_politician("John Doe", "Nuetral")
        expect(world.politicians.count).to eq(1)
    end
    
    it "can list Voters" do
        world = World.new()
        world.create_voter("John Doe", "Nuetral")
        expect(world.list_voters).to eq("Voter, John Doe, Nuetral")
    end
    
    it "can list Politicians" do
        world = World.new()
        world.create_politician("John Doe", "Democrat")
        expect(world.list_politicians).to eq("Politician, John Doe, Democrat")
    end  
    
    it "can update a politician record by name" do
        world = World.new() 
        world.create_politician("John Doe", "Democrat")
        world.update_politician("John Doe", "name", "Johannes Doe")
        expect(world.list_politicians).to eq("Politician, Johannes Doe, Democrat")
    end

    it "can update a politician record by party" do
        world = World.new() 
        world.create_politician("John Doe", "Democrat")
        world.update_politician("John Doe", "party", "Republican")
        expect(world.list_politicians).to eq("Politician, John Doe, Republican")
    end

    it "can update a voter record by name" do
        world = World.new() 
        world.create_voter("John Doe", "Neutral")
        world.update_voter("John Doe", "name", "Jane Doe")
        expect(world.list_voters).to eq("Voter, Jane Doe, Neutral")
    end

    it "can update a voter record by politics" do
        world = World.new() 
        world.create_voter("John Doe", "Neutral")
        world.update_voter("John Doe", "politics", "Socialist")
        expect(world.list_voters).to eq("Voter, John Doe, Socialist")
    end
    
    it "can delete a Voter" do
        world = World.new()
        world.create_voter("John Doe", "Nuetral")
        world.delete_voter("John Doe")
        expect(world.voters.count).to eq(0)
    end
    
    it "can delete a Politician" do
        world = World.new()
        world.create_politician("John Doe", "Nuetral")
        world.delete_politician("John Doe")
        expect(world.politicians.count).to eq(0)
    end
end