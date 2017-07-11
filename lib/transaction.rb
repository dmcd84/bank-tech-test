class Transaction

attr_reader :date, :balance, :credit, :debit

  def initialize(credit, debit, balance)
    @date = Time.now
    @credit = credit
    @debit = debit
    @balance = balance
  end
end
