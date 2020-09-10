# frozen_string_literal: true
class Account
  attr_reader :balance, :date, :statement, :history, :amount

  def initialize(balance = 0)
    @balance = balance
    @amount = amount
    @history = []
    @date = ""
  end

  def empty?
    @balance
  end

  def deposit(amount)
  p @date = "10/01/2012"
    @amount = amount
    @balance += amount
    record_deposit
  p  balance
  end

  def add_total
    bank = []
    bank.push(@balance)
    bank.inject do |a, b|
      a + b
    end
  end

  def withdraw(amount)
    @amount = amount
   p @date = "14/01/2012"
    @balance -= amount
    record_withdraw
    p balance
  end

  def print_header
    header = ['date || credit || deposit || add_total']
    header
  end

  def transactions
    history_statement = @history.reverse
    history_statement.each do |transaction|
      puts "#{transaction[0]}|| #{transaction[1]}|| #{transaction[2]}|| #{transaction[3]}"
    end
  end

  def print_statement
    p print_header
     transactions.sort
   end

  private

  def record_deposit
    transactions = [@date, amount, nil, @balance]
    @history.push(transactions)
  end

  def record_withdraw
    transactions = [@date, nil, amount, @balance]
    @history.push(transactions)
  end
end

