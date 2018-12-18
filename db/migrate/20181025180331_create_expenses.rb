class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.float :price
      t.references :person, foreign_key: true    
      t.references :article
      t.timestamps
    end
  end
end
