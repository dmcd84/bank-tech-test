require 'statement'

describe Statement do
  context 'new account initialized' do
    it 'has not transactional history' do
      expect(subject.transaction_history).to eq([])
    end
  end
end
