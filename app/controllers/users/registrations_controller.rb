# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]


  

  # GET /resource/sign_up
   def new
    @registration_reasons =  RegistrationReason.all
    #   super
    # Override Devise default behaviour and create a profile as well
    build_resource({})
    resource.build_profile
    #ressource.build_identity_document
    respond_with self.resource
    #@customer.build_identity_document
   end




   def create
    role_id = sign_up_params[:role_id]


  
    unless role_id.present?
      build_resource(sign_up_params.merge(role_id: Role.find_by(name: "visiteur").id))
    end

    resource.save

    puts "RESOURCE: #{resource.id}"

    yield resource if block_given?
    if resource.persisted?
      if resource.active_for_authentication?
        set_flash_message! :notice, :signed_up
        sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      set_minimum_password_length
      respond_with resource
    end
   end
   
  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected


  
  
  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:registration_reason, profile_attributes: [:first_name, :last_name, :gender, :born_date, :profession, :phone, :country, :city]])
    devise_parameter_sanitizer.permit(:account_update, keys: [:registration_reason, profile_attributes: [:first_name, :last_name, :gender, :born_date, :profession, :phone, :country, :city]])
   end

  # If you have extra params to permit, append them to the sanitizer.
   def configure_account_update_params
     devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
   end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end


  def after_update_path_for(resource)
    profile_path
  end

  def after_sign_in_path_for(resource)
   
        dashboard_path
 

  end

  def sign_up_params
    devise_parameter_sanitizer.sanitize(:sign_up)
  end

end
