# frozen_string_literal: true
class Account
  attr_reader :balance
  def initialize
    @balance = 0
  end
  
  def empty?
    @balance
  end

  def deposit(amount)
  p  @balance = amount
  end

  def add_total(amount)
    amount += @balance
  #   @balance= []
  #  p add_amount = @balance.push(amount) 
  #   add_amount.inject{|dep1, dep2| 
  #   dep1 + dep2 }
  end
end
