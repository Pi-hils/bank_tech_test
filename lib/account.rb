# frozen_string_literal: true
class Account
  attr_reader :balance, :total
  def initialize
    @balance = 0
    @total = total
  end
  
  def empty?
    @balance
  end

  def deposit(amount)
    @balance += amount
  end

  #not even needed but it was good practice. To refactor
  def add_total
    bank = []
    amount = bank.push(@balance)
    bank.inject{ |a, b|
    a += b }
  end
end
