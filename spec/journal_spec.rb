require_relative "../journal"

describe Journal do
    context "journal initialization" do
        it "initializes with a list of transactions array" do
            expect(Journal.new.list_of_transactions).to eq([])
        end
    end
    
    # context ".transaction" do
    #     it "create a transaction" do
    #         expect(Journal.new.create_transaction("")).to eq("")
    #     end
    # end
end