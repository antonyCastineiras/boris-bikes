require 'bike'

describe Bike do
    it {is_expected.to respond_to :broken?}
    it 'reports a broken bike when docked' do
    		bike = Bike.new
    		expect(bike.broken?).to eq false  		
      end	
end