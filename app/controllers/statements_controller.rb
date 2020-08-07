class StatementsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_statement, only: [:show, :edit, :update, :destroy]
layout "dashboard"
  # GET /statements
  # GET /statements.json
  def index
    @statements = Statement.all
  end

  # GET /statements/1
  # GET /statements/1.json
  def show
  end

  # GET /statements/new
  def new
     @statement_types = StatementType.all
     @agents = Agent.all
    @sale_points = SalePoint.all
     @products = Product.all
    @statement = Statement.new
  end

  # GET /statements/1/edit
  def edit
    @statement_types = StatementType.all
     @agents = Agent.all
    @sale_points = SalePoint.all
     @products = Product.all
  end

  # POST /statements
  # POST /statements.json
  def create
    @statement = current_user.statements.build(statement_params)
    @statement.amount = Product.find(@statement.product_id).price * @statement.quantity
    respond_to do |format|
      if @statement.save
         @statements = Statement.all
        format.html { redirect_to @statement, notice: 'Statement was successfully created.' }
        format.json { render :show, status: :created, location: @statement }
        format.js
      else
        format.html { render :new }
        format.json { render json: @statement.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /statements/1
  # PATCH/PUT /statements/1.json
  def update
    respond_to do |format|
      if @statement.update(statement_params)
         @statements = Statement.all
        format.html { redirect_to @statement, notice: 'Statement was successfully updated.' }
        format.json { render :show, status: :ok, location: @statement }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @statement.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

def delete
      @statement = Statement.find(params[:statement_id])
    end

  # DELETE /statements/1
  # DELETE /statements/1.json
  def destroy
    @statement.destroy
    respond_to do |format|
      format.html { redirect_to statements_url, notice: 'Statement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_statement
      @statement = Statement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def statement_params
      params.require(:statement).permit(:statement_type_id, :product_id, :quantity, :sale_point_id, :agent_id)
    end
end
