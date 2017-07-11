require 'statement'
require 'account'

describe Statement do
  it 'initializes taking an array of transactions' do
    account = Account.new
    account.deposit(100)
    account.withdraw(50)
    statement = account.new_statement
    statement.printout
    expect(statement.transaction_history).not_to be(nil)
  end
end
