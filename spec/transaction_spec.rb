require 'transaction'
require 'timecop'

describe Transaction do
  it 'initializes with a date' do
    Timecop.freeze do
      expect(subject.date).to eq Time.now
    end
  end
end
