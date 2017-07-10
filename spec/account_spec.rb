require 'account'

describe Account do
  describe '#initialize' do
    it 'initializes with a balance of 0' do
      expect(subject.balance).to eq(0)
    end
  end

  describe '#deposit' do
    it 'can recieve a deposit to increase the balance' do
      subject.deposit(100.50)
      expect(subject.balance).to eq(100.50)
    end
  end
end
