class Transfer
  attr_accessor :name 
  attr_reader :amount 
  
  def initialize(sender, receiver, amount)
    @status = "pending"
    @sender = sender
    @receiver = receiver
    @amount = amount 
end
