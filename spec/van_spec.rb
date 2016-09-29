require 'van'

describe Van do 

	it { is_expected.to respond_to :collect_broken_bikes }
	it { is_expected.to respond_to :deliver_broken_bikes }
	it { is_expected.to respond_to :deliver_working_bikes }
	it { is_expected.to respond_to :collect_working_bikes }
end