require_relative '../transaction'

# Transaction (e.g. books, lunch)
# External account name
# Amount (debit/credit): float
# date: datetime
# description: string
# journal reference: class/string

describe Transaction do
  context 'check transaction class exists' do
    it "returns '' when instantiated with nil" do
      expect(Transaction.new(nil)).to eq('')
    end
  end
end