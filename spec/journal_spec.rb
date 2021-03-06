require_relative "../journal"

describe Journal do
    context "journal initialization" do
        it "initializes with a list of transactions array" do
            expect(Journal.new("test").list_of_transactions).to eq([])
        end
    end
    
    context "initialize journal with a name" do
        it "initializes a journal with a name" do
            expect(Journal.new("test").name).to eq("test")
        end
    end

    context "adding transaction" do
        it "adds transaction to list_of_transactions" do
            test = Journal.new("test")
            test.add_transaction("Hello")
            expect(test.list_of_transactions).to eq(["Hello"])
        end

        it "adds transaction to list_of_transactions" do
            test = Journal.new("test")
            test.add_transaction("Hello")
            test.add_transaction("World")
            expect(test.list_of_transactions).to eq(["Hello", "World"])
        end
    end
    # context ".transaction" do
    #     it "create a transaction" do
    #         expect(Journal.new.create_transaction("")).to eq("")
    #     end
    # end
end