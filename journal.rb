class Journal
    attr_accessor :list_of_transactions, :name
    
    def initialize(journal_name)
        @name = journal_name
        @list_of_transactions = []
    end

    def add_transaction(transaction)
        @list_of_transactions << transaction
    end

end