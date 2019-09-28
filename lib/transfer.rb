class Transfer
  attr_accessor :status
  attr_reader :amount, :sender, :receiver
  
  def initialize(sender, receiver, amount)
    @status = "pending"
    @sender = sender
    @receiver = receiver
    @amount = amount 
  end
  
  def valid?
    @sender.valid? == true && @receiver.valid? == true && @sender.balance >= @amount
  end
  
  def execute_transaction
  if self.valid? && @status != "complete"
    @sender.withdraw(@amount)
    @receiver.deposit(@amount)
    @status = "complete"
  end
  end

  def reverse_transaction
  
  end
end
