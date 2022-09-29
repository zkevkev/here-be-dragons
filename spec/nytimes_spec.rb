require 'rspec'
require 'pry'
require './lib/nytimes'

class Nytimes
  describe 'data' do 
    before :each do 
      @hash = Nytimes::DATA
    end 
  
    it 'can get status' do 
      #FINISHED EXAMPLE: Using @hash, define a variable called `result` that returns the status
      result = @hash[:status]
      
      expect(result).to eq("OK")
    end

    xit 'can get copyright' do 
      #Using @hash, define a variable called `result` that returns the copyright

      expect(result).to eq("Copyright (c) 2018 The New York Times Company. All Rights Reserved.")
    end

    xit 'can get array of stories' do 
      #Using @hash, define a variable called `result` that returns the array of stories
  
      expect(result.class).to be_a(Array)
      expect(result.count).to eq(44)
    end

    xit 'can get all stories with subsection of politics' do 
      #Using @hash, define a variable called `result` that returns all stories with subsection of politics.
  
      expect(result.class).to be_a(Array)
      expect(result.count).to eq(6)
      expect(result.first[:title]).to eq("Congressional G.O.P. Agenda Quietly Falls Into Place Even as Trump Steals the Spotlight")
      expect(result.last[:title]).to eq("Conspiracy Theories Made Alex Jones Very Rich. They May Bring Him Down.")
    end
  end 

end
