class RegistrationReasonsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_registration_reason, only: [:show, :edit, :update, :destroy]
  layout "dashboard"
  # GET /registration_reasons
  # GET /registration_reasons.json
  def index
    @registration_reasons = RegistrationReason.all
  end

  # GET /registration_reasons/1
  # GET /registration_reasons/1.json
  def show
  end

  # GET /registration_reasons/new
  def new
    @registration_reason = RegistrationReason.new
  end

  # GET /registration_reasons/1/edit
  def edit
  end

  # POST /registration_reasons
  # POST /registration_reasons.json
  def create
    @registration_reason = RegistrationReason.new(registration_reason_params)

    respond_to do |format|
      if @registration_reason.save
        @registration_reasons = RegistrationReason.all
        format.html { redirect_to @registration_reason, notice: 'Registration reason was successfully created.' }
        format.json { render :show, status: :created, location: @registration_reason }
        format.js
      else
        format.html { render :new }
        format.json { render json: @registration_reason.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /registration_reasons/1
  # PATCH/PUT /registration_reasons/1.json
  def update
    respond_to do |format|
      if @registration_reason.update(registration_reason_params)
        @registration_reasons = RegistrationReason.all
        format.html { redirect_to @registration_reason, notice: 'Registration reason was successfully updated.' }
        format.json { render :show, status: :ok, location: @registration_reason }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @registration_reason.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def delete
    @registration_reason = RegistrationReason.find(params[:registration_reason_id])
  end

  # DELETE /registration_reasons/1
  # DELETE /registration_reasons/1.json
  def destroy
    @registration_reason.destroy
    respond_to do |format|
      format.html { redirect_to registration_reasons_url, notice: 'Registration reason was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registration_reason
      @registration_reason = RegistrationReason.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def registration_reason_params
      params.require(:registration_reason).permit(:name, :description, :status)
    end
end
