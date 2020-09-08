# frozen_string_literal: true
class Account
  attr_reader :balance, :date, :statement, :history, :amount

  def initialize(balance=0)
    @balance = balance
    @amount = amount
    @date = Time.new.strftime("%d/%m/%Y")
    @history = []
    @statement = ["date || credit || deposit || add_total",
      "#{date}|| #{deposit(balance)} || #{withdraw(balance)} || #{add_total}"]
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

  def withdraw(amount)
    @balance -= amount
  end

  def display_history
    @history
  end

  def print_statement
    @statement
  end
end
