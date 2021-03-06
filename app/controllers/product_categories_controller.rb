class ProductCategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_product_category, only: [:show, :edit, :update, :destroy]
  layout "dashboard"

  # GET /product_categories
  # GET /product_categories.json
  def index
    @product_categories = ProductCategory.all
  end

  # GET /product_categories/1
  # GET /product_categories/1.json
  def show
  end

  # GET /product_categories/new
  def new
    @product_categories = ProductCategory.all
    @product_category = ProductCategory.new
  end

  # GET /product_categories/1/edit
  def edit
    @product_categories = ProductCategory.all
  end

  # POST /product_categories
  # POST /product_categories.json
  def create
    @product_category = current_user.product_categories.build(product_category_params)

    respond_to do |format|
      if @product_category.save
        @product_categories = ProductCategory.all
        format.html { redirect_to @product_category, notice: 'Product category was successfully created.' }
        format.json { render :show, status: :created, location: @product_category }
        format.js
      else
        format.html { render :new }
        format.json { render json: @product_category.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /product_categories/1
  # PATCH/PUT /product_categories/1.json
  def update
    respond_to do |format|
      if @product_category.update(product_category_params)
        @product_categories = ProductCategory.all
        format.html { redirect_to @product_category, notice: 'Product category was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_category }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @product_category.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end


  def delete
    @product_category = ProductCategory.find(params[:product_category_id])
  end

  # DELETE /product_categories/1
  # DELETE /product_categories/1.json
  def destroy
    @product_category.destroy
    respond_to do |format|
      format.html { redirect_to product_categories_url, notice: 'Product category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_category
      @product_category = ProductCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_category_params
      params.require(:product_category).permit(:name,  :description)
    end
end
