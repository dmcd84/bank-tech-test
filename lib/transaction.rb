class Transaction

attr_reader :date, :balance, :amount

  def initialize(amount, balance)
    @date = Time.now
    @amount = amount
    @balance = balance
  end
end
