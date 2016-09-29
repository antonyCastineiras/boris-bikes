require 'garage'

describe Garage do
    it { is_expected.to respond_to :receive_broken_bike }
    it { is_expected.to respond_to :repair_broken_bike }
    it { is_expected.to respond_to :release_working_bike }
end