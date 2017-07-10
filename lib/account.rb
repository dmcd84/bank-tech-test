require_relative 'transaction'

class Account
  attr_reader :balance, :transaction_history

  def initialize
    @balance = 0
    @transaction_history = []
  end

  def new_statement
    Statement.new(transaction_history)
  end

  def deposit(amount)
    @balance += amount
    transaction_details(amount, @balance)
  end

  def withdraw(amount)
    raise 'Insufficent funds available' if @balance < amount
    @balance -= amount
    transaction_details(amount, @balance)
  end

  def transaction_details(amount, balance)
    transaction = Transaction.new(amount, balance)
    @transaction_history << transaction
  end
end
