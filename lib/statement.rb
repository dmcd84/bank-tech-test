
class Statement

attr_reader :transaction_history

  def initialize(transaction_history)
    @transaction_history = transaction_history
  end

  def printout
    p "Date || Credit || Debit || Balance"
    @transaction_history.each do |transaction|
      p "#{transaction.date.strftime('%d-%m-%Y')} || #{transaction.credit} || #{transaction.debit} || #{transaction.balance}"
    end
  end

end
