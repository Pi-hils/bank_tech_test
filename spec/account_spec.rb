require './lib/account'

RSpec.describe '.Account' do

  describe 'deposit' do
    it 'is newly created' do
      account = Account.new
      expect(account.empty?).to eq (0)
    end
  end
end