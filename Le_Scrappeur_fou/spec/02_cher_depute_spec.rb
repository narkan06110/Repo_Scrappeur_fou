require_relative '../lib/02_cher_depute'

describe "get_url method include names and mail" do 
    it "should return many politics names" do 
        expect(ending_tab.include?("Damien")).to eq(true)
    end 
    it "should return many mail adress" do 
        expect(ending_tab.include?("damien.abad@assemblee-nationale.fr")).to eq(true)
    end 
end 