class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

def initialize(name)
  @name = name 
  @balance = 1000
  @status = "open"
end

def deposit(amount)
  @balance += amount
  display_balance
end 

def display_balance
  @balance
end

def valid?
  if @status = "open" && @balance > 0 
end
end

def close_account 
  @status = "closed"
end 

end
