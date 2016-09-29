require 'van'

describe Van do 

	it { is_expected.to respond_to :receive_bike }
	it { is_expected.to respond_to :release_broken_bike }
	it { is_expected.to respond_to :release_working_bike }
end