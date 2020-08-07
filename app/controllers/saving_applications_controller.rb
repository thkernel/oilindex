class SavingApplicationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_saving_application, only: [:show, :edit, :update, :destroy]

  # GET /saving_applications
  # GET /saving_applications.json
  def index
    @saving_applications = SavingApplication.all
    render layout: "dashboard"
  end

  # GET /saving_applications/1
  # GET /saving_applications/1.json
  def show
  end

  # GET /saving_applications/new
  def new
    @saving_application = SavingApplication.new
    render layout: "front"
  end

  # GET /saving_applications/1/edit
  def edit
  end

  # POST /saving_applications
  # POST /saving_applications.json
  def create
    @saving_application = current_user.saving_applications.build(saving_application_params)

    respond_to do |format|
      if @saving_application.save
        format.html { redirect_to @saving_application, notice: 'Saving application was successfully created.' }
        format.json { render :show, status: :created, location: @saving_application }
      else
        format.html { render :new }
        format.json { render json: @saving_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saving_applications/1
  # PATCH/PUT /saving_applications/1.json
  def update
    respond_to do |format|
      if @saving_application.update(saving_application_params)
        format.html { redirect_to @saving_application, notice: 'Saving application was successfully updated.' }
        format.json { render :show, status: :ok, location: @saving_application }
      else
        format.html { render :edit }
        format.json { render json: @saving_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saving_applications/1
  # DELETE /saving_applications/1.json
  def destroy
    @saving_application.destroy
    respond_to do |format|
      format.html { redirect_to saving_applications_url, notice: 'Saving application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saving_application
      @saving_application = SavingApplication.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def saving_application_params
      params.require(:saving_application).permit(:entrepreneur, :entrepreneurship_time, :activity_area, :desired_amount, :notes, :status, :user_id)
    end
end
