require 'docking_station'


describe DockingStation do

  before(:each) do
    @bike = double(:bike, broken?: false, report_broken: true)   
  end

  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike }

    it 'releases working bike' do
      subject.dock(@bike)
      expect(subject.release_bike).to eq @bike
    end
  end


  describe '#dock' do
    it { is_expected.to respond_to(:dock).with(1).argument}

    it 'docks something' do
      expect(subject.dock(@bike)[-1]).to eq @bike
    end
    
    it 'returns docked bikes' do
      subject.dock(@bike)
      expect(subject.release_bike).to eq @bike
    end

    it 'raises an error when full' do
      subject.capacity.times{ subject.dock @bike }
      expect { subject.dock @bike }.to raise_error 'Docking Station Full'
    end

    it 'doesn\'t release broken bikes' do
      subject.dock(@bike,true)
      expect{ subject.release_bike }.to raise_error "No working bikes available"
    end
  end

  describe '#release_bike' do
      it 'raises an error when empty' do
        expect { subject.release_bike }.to raise_error 'No working bikes available'
      end
    end

    it 'has a default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
end