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
    @sender.valid? == true && @receiver.valid? == true
  end
  
  def execute_transaction
  if self.valid?
    @sender.deposit(@amount)
    @receiver.withdraw(@amount)
  end
  end

  def reverse_transaction
  
  end
end
