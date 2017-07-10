require 'statement'
require 'account'

describe Statement do
  it 'initializes taking an array of transactions' do
    account = Account.new
    account.deposit(100)
    statement = account.new_statement
    expect(statement.transaction_history).not_to be(nil)
  end
end
