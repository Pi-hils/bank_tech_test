# frozen_string_literal: true
class Account
  attr_reader :balance, :date, :statement, :history, :amount

  def initialize(balance=0)
    @balance = balance
    @amount = amount
    @history = []
    @date = ''
  end
  
  def empty?
    @balance
  end

  def deposit(amount)
    @date = Time.new.strftime("%d/%m/%Y")
    @amount = amount
    @balance += amount
    record_deposit
    balance
  end

  def add_total
    bank = []
    total = bank.push(@balance)
    bank.inject{ |a, b|
    a += b }
  end

  def withdraw(amount)
    @amount = amount
    @date = Time.new.strftime("%d/%m/%Y") 
    @balance -= amount
    record_withdraw
    balance
  end

  def print_header
   header = ["date || credit || deposit || add_total"]
   header
  end

  def transactions
    history_statement = @history.reverse()
    history_statement.each{ |transaction| 
    puts "#{transaction[0]}|| #{transaction[1]}|| #{transaction[2]}|| #{transaction[3]}"}
  end

  def print_statement
    print_header
    transactions
  end

  private
  def record_deposit
    transactions = [@date, amount, nil, @balance]
    @history.push(transactions)
  end

  def record_withdraw
    transactions =[@date, nil, amount, @balance]
    @history.push(transactions)
  end
end
