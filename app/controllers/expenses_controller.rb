class ExpensesController < ProtectedController
  before_action :set_expense, only: [:show, :update, :destroy]

  # GET /expenses
  def index
    @expenses = current_user.expenses.order("#{sort_column} #{sort_direction}")
    render json: @expenses
  end

  # GET /expenses/1
  def show
    render json: @expense
  end

  # POST /expenses
  def create
    @expense = current_user.expenses.build(expense_params)
    if @expense.save
      render json: @expense, status: :created
    else
      render json: @expense.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /expenses/1
  def update
    if @expense.update(expense_params)
      render json: @expense
    else
      render json: @expense.errors, status: :unprocessable_entity
    end
  end

  # DELETE /expenses/1
  def destroy
    @expense.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense
      @expense = current_user.expenses.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def expense_params
      params.require(:expense).permit(:description, :amount, :payment_date, :paid, :recurring)
    end

    def sortable_columns
      ['payment_date']
    end

    def sort_column
      sortable_columns.include?(params[:column]) ? params[:column] : 'payment_date'
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : 'asc'
    end
  end
