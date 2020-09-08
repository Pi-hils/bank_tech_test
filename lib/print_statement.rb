require 'account'
class Print_Statement
  def transaction
    deposit(amount)
    @statement
  end
end