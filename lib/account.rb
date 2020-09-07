# frozen_string_literal: true
class Account
  def initialize
    @balance = 0
  end
  
  def empty?
    @balance
  end

  def deposit(balance)
    @balance = 1000
  end
end
