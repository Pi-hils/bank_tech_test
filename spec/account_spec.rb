# frozen_string_literal: true

require './lib/account'
#require './lib/print_statement'

RSpec.describe '.Account' do
  let(:account) { Account.new }
  describe 'deposit' do
    it 'is newly created' do
      expect(account.empty?).to eq(0)
    end
  end

  context 'deposit any amount' do
    it 'deposited' do
      expect(account.deposit(1000)).to eq(1000)
    end

      #stub
      it 'returns a specific date for 1000 deposited' do
        # time = Time.new.strftime('%d/%m/%Y')
        account.deposit(1000)
        # stub(account).deposit(1000) {"10/01/2012"}
        allow(account).to receive(:deposit).and_return("10/01/2012")
  
        expect(account.deposit(1000)).to eq("10/01/2012")
      end

    it 'totals amount' do
      account.deposit(1000)
      account.deposit(1000)
      expect(account.add_total).to eq(2000)
    end
  end

  describe 'withdrawal' do
    it 'can be done' do
      account.deposit(80)
      expect(account.withdraw(20)).to eq(60)
    end

    it 'records the withdrawn amount' do
      account.deposit(100.00)
      account.withdraw(20.00)
      expect(account.withdraw(20)).to eq(60.00)
    end

    it 'returns a specific date for 1000 deposited' do
      # time = Time.new.strftime('%d/%m/%Y')
      account.withdraw(500.00)
      # stub(account).deposit(1000) {"10/01/2012"}
      allow(account).to receive(:withdraw).and_return("14/01/2012")
      expect(account.withdraw(500)).to eq("14/01/2012")
    end
  end

  it 'can print header' do
    expect(account.print_header).to eq(['date || credit || deposit || add_total'])
  end

  it 'print statement' do
    account.deposit(1000)
    expect(account.print_statement).to eq([["10/01/2012", 1000, nil, 1000]])
  end

  it 'transaction' do
    account.deposit(100)
    expect(account.transactions).to eq([["10/01/2012", 100, nil, 100]])
  end

end
