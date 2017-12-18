class CreateBudgets < ActiveRecord::Migration[5.1]
  def change
    create_table :budgets do |t|
      t.integer :starting_budget
      t.integer :amount_spent
      t.integer :remaining_budget

      t.timestamps
    end
  end
end
