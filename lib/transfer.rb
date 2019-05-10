require 'pry'

class Transfer

attr_accessor :sender, :receiver
attr_reader

  def initialize(sender, receiver, amount)
    @amount = amount
    @status = "pending"
  end
end
