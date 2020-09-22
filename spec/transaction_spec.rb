require_relative '../transaction'

# Transaction (e.g. books, lunch)
# External account name
# Amount (debit/credit): float
# date: datetime
# description: string
# journal reference: class/string

describe Transaction do
  context 'check transaction class exists' do
    it "returns 20.00 when instantiated with 20.00" do
      expect(Transaction.new(20.00).amount).to eq(20.00)
    end
  end
end