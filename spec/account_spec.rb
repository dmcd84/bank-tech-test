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

  describe '#withdrawal' do
    it 'can deduct a withdrawl from the balance of the account' do
      subject.deposit(100.50)
      subject.withdraw(100)
      expect(subject.balance).to eq(0.5)
    end

    it 'will return an error if there is insufficient funds' do
      expect { subject.withdraw(100) }.to raise_error('Insufficent funds available')
    end
  end
end
