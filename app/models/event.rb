class Event < ApplicationRecord
    validates :name, presence: true
    has_many :people 
    has_many :expenses, through: :people
    
    def expenseSum
        t=0
        expenses.each do |expense|
            t+=expense.price
        end
        t    
    end


    def promedio
        return 0 unless people.count.positive?
        expenseSum / people.count
    end

end