class Person < ApplicationRecord
  validates :name, presence: true 
  belongs_to :event
  has_many :expenses

  def total_expense
    t=0
    expenses.each do |expense|
        next unless expense.price
        t+=expense.price
    end
    t    
  end
end
