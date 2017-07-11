require_relative 'transaction'
require_relative 'statement'

class Account
  attr_reader :balance, :transaction_history

  def initialize
    @balance = 0
    @transaction_history = []
  end

  def deposit(amount)
    @balance += amount
    transaction_details(amount, '', @balance)
  end

  def withdraw(amount)
    raise 'Insufficent funds available' if @balance < amount
    @balance -= amount
    transaction_details('', amount, @balance)
  end

  def transaction_details(credit, debit, balance)
    transaction = Transaction.new(credit, debit, balance)
    @transaction_history << transaction
  end

  def new_statement
    Statement.new(transaction_history)
  end

  def print_statement
    Statement.new(transaction_history).printout
  end
end
