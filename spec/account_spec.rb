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

    describe "withdrawal" do
      it 'can be done' do
        account.deposit(80)
        expect(account.withdraw(20)).to eq(60)
      end
    end
end
