require 'docking_station'



describe DockingStation do
    it { is_expected.to respond_to :release_bike }

    it 'releases working bike' do
    		subject.dock(Bike.new)
        bike = subject.release_bike
        expect(bike).to be_working
    end
    
    it { is_expected.to respond_to(:dock).with(1).argument }
    it { is_expected.to respond_to(:bikes) }

    it 'raises an error when there are no bikes to release' do
    	expect{ subject.release_bike }.to raise_error "No bikes available"
    	end
    	
describe '#Dock' do
    it 'raises an error when full' do
        subject.capacity.times { subject.dock(Bike.new) }
        expect { subject.dock Bike.new }.to raise_error 'Docking station is full'
        end
    
    end

   
end