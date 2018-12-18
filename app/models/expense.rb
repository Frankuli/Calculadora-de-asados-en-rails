class Expense < ApplicationRecord
    validates :price, presence: true
    belongs_to :person
    belongs_to :article 
end
