require 'lib/account'
class Statement
  def initialize(account)
    @account = account
  end
  
  def print_statement
    account = Account.new
   p "#{@acc.print_header}"
     "#{@acc.transactions}"
   end
end
# = Time.new.strftime('%d/%m/%Y')

# expect(account.print_statement).to eq([["#{Time.new.strftime('%d/%m/%Y')}", 100, nil, 100]])
# end