class BudgetsController < ProtectedController
  before_action :set_budget, only: [:index, :show, :update, :destroy]

  # GET /budgets
  def index
    render json: @budget
  end

  # GET /budgets/1
  def show
    render json: @budget
  end

  # POST /budgets
  def create
    @budget = current_user.build_budget(budget_params)
    if @budget.save
      render json: @budget, status: :created
    else
      render json: @budget.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /budgets/1
  def update
    if @budget.update(budget_params)
      render json: @budget
    else
      render json: @budget.errors, status: :unprocessable_entity
    end
  end

  # DELETE /budgets/1
  def destroy
    @budget.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budget
      @budget = current_user.budget
    end

    # Only allow a trusted parameter "white list" through.
    def budget_params
      params.require(:budget).permit(:starting_budget, :amount_spent, :remaining_budget)
    end
end
