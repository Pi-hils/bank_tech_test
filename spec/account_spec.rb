# frozen_string_literal: true

require './lib/account'

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
      account.deposit(100)
      account.withdraw(20)
      expect(account.withdraw(20)).to eq(60)
    end
  end

  it 'can print header' do
    expect(account.print_header).to eql(['date || credit || deposit || add_total'])
  end

  it 'print statement' do
    account.deposit(100)
    expect(account.print_statement).to eq([['08/09/2020', 100, nil, 100]])
  end

  it 'transaction' do
    account.deposit(100)
    expect(account.transactions).to eq([['08/09/2020', 100, nil, 100]])
  end
end
