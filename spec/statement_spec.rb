require 'statement'

describe Statement do
  context 'new account initialized' do
    it 'has no transactional history' do
      expect(subject.transaction_history).to eq([])
    end
  end
  context 'deposit made to account' do
    it 'adds a deposit to the transaction_history' do
      expect { account.deposit(100) }.to change { transaction_history.length }.by 1
    end
  end
end
