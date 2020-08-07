class SalePointsController < ApplicationController
  before_action :set_sale_point, only: [:show, :edit, :update, :destroy]

  # GET /sale_points
  # GET /sale_points.json
  def index
    @sale_points = SalePoint.all
  end

  # GET /sale_points/1
  # GET /sale_points/1.json
  def show
  end

  # GET /sale_points/new
  def new
    @sale_point = SalePoint.new
  end

  # GET /sale_points/1/edit
  def edit
  end

  # POST /sale_points
  # POST /sale_points.json
  def create
    @sale_point = SalePoint.new(sale_point_params)

    respond_to do |format|
      if @sale_point.save
        format.html { redirect_to @sale_point, notice: 'Sale point was successfully created.' }
        format.json { render :show, status: :created, location: @sale_point }
      else
        format.html { render :new }
        format.json { render json: @sale_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sale_points/1
  # PATCH/PUT /sale_points/1.json
  def update
    respond_to do |format|
      if @sale_point.update(sale_point_params)
        format.html { redirect_to @sale_point, notice: 'Sale point was successfully updated.' }
        format.json { render :show, status: :ok, location: @sale_point }
      else
        format.html { render :edit }
        format.json { render json: @sale_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sale_points/1
  # DELETE /sale_points/1.json
  def destroy
    @sale_point.destroy
    respond_to do |format|
      format.html { redirect_to sale_points_url, notice: 'Sale point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale_point
      @sale_point = SalePoint.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sale_point_params
      params.require(:sale_point).permit(:name, :status, :user_id)
    end
end
