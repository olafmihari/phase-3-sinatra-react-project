class CreateExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
      t.decimal :amount
      t.string :description
      t.date :date
      t.references :user, foreign_key: true
      t.references :bank, foreign_key: true
      
      t.timestamps
    end
  end
end
