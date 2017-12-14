class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.string :description
      t.integer :amount
      t.date :payment_date
      t.boolean :paid

      t.timestamps
    end
  end
end
