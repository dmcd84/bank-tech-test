class Transaction

attr_reader :date, :balance, :amount

  def initialize(amount, balance)
    @date = Time.now
    @balance = balance
    @amount = amount
  end
end
