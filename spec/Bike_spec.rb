require 'bike'

describe Bike do
  it 'should respond to broken?' do
    expect(subject).to respond_to :broken?
  end
end
