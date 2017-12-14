class AddRecurringToExpenses < ActiveRecord::Migration[5.1]
  def change
    add_column :expenses, :recurring, :boolean
  end
end
