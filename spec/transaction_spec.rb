require 'transaction'
require 'timecop'

describe Transaction do
  it 'initializes with a date' do
    Timecop.freeze do
      transaction = Transaction.new(100, 100)
      expect(transaction.date).to eq Time.now
    end
  end

  it 'returns the balance' do
    account = Account.new
    account.deposit(100)
    transaction = Transaction.new(100, 100)
    expect(transaction.balance).to eq 100
  end
end
