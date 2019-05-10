require 'pry'

class Transfer

attr_accessor :sender, :receiver, :status, :amount

@@last_transfer = []
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    if @sender.valid? == true && @receiver.valid? == true
      true
    else
      false
    end
  end

  def execute_transaction
    if @sender.balance > @amount
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    elsif @sender.balance < @amount
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
    @@last_transfer << self
  end

  def reverse_transfer
    if @@last_trasfer.amount == @amount
      @sender.balance += @amount
      @receiver.balance -= @amount
      @status = "reversed"
    end
  end

end
