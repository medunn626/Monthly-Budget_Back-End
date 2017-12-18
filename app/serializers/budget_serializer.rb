class BudgetSerializer < ActiveModel::Serializer
  attributes :id, :starting_budget, :amount_spent, :remaining_budget, :user_id
end
