# frozen_string_literal: true

require './lib/account'

RSpec.describe '.Account' do
  let(:account) { Account.new }
  describe 'deposit' do
    it 'is newly created' do
      expect(account.empty?).to eq(0)
    end
  end

    it 'deposits any amount I deposit' do
      expect(account.deposit(1000)).to eq(1000)
    end
end
