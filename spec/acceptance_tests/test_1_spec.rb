# Acceptance Test 1: Add new transaction

# Scenario: Steve the employee wants to add a transaction to the accounting system.
# Given Steve received an invoice for a Macbook which was £2000
# And he wants to record it in the accounting system
# When he adds this transaction to the journal
# Then the general ledger gets updated

describe 'User can add a transaction to the system' do
  context 'Given Steve receives an invoice for a MacBook valued at £2,000 and he wants to record it in the accounting system' do
    xit 'Adds transaction to the system' do
      general_ledger = GeneralLedger.new
      journal = Journal.new
      account = Account.new

      transaction = Transaction.new({ value: 2000, description: 'MacBook' })

      journal.add_transaction(transaction)
      account.add_journal(journal)

      general_ledger.calculate_balance

      expect(general_ledger.balance).to eq( [{account: 2000}])
    end

  end
end
