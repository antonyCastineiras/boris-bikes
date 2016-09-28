require 'bike'

describe Bike do
    it {is_expected.to respond_to :working?}
    it 'reports a broken bike when docked' do
    		bike = Bike.new
    		bike.working = false
    		expect(bike.broken?).to eq true  		
      end	
end