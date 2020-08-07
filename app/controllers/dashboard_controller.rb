class DashboardController < ApplicationController
	
	before_action :authenticate_user!
	#before_action :create_company

	layout 'dashboard'
	
	def index

		#if is_manager?
			#@accounts = Account.all
			
		#end

		@total_agents = Agent.count
		@total_sale_points = SalePoint.count

		@total_quantity = 0
		@total_amount = 0


		
	end

	def unauthorize
		render layout: 'unauthorize'
	end

	def create_company
		company = Company.all
		#if  company.blank? && is_admin?
			#redirect_to new_company_path
		#end
	end

	
	
	

	
	

end