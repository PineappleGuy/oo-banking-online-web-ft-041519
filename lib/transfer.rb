require 'pry'

class Transfer

attr_accessor :sender, :receiver, :status, :amount

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
    @sender.balance -= @amount
    @receiver.balance += @amount
    @status = "complete"
  end

  def reverse_transfer

  end

end
