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
  if self.valid? && @status == "pending"
        @sender.withdraw(@amount)
        @receiver.deposit(@amount)
        @status = "complete"
      else
        reject
  end
  end

  def reject
    @status = "rejected"
    return "Transaction rejected.Please check your account balance."
  end
    
  def reverse_transaction
  if @receiver.balance > @amount && @status == "complete"
    @receiver.withdraw(@amount)
    @sender.deposit(@amount)
  end
  end
end
