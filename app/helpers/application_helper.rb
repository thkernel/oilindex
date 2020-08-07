module ApplicationHelper
	# Include all helpers
	

    def resource_name
	    :user
	end

	def resource
	    @resource ||= User.new
	end
	
	def resource_class
		User
	end
	
	def devise_mapping
	    @devise_mapping ||= Devise.mappings[:user]
	end


	def get_tenant_status?(subdomain)
		tenant = Tenant.find_by(name: subdomain)

		if tenant.present? #&& tenant.status == true
			true 
		else
			#false
			true #for test
		end
	end


	def devise_title(controller)
		if controller == "sessions"
			t(:login)
		elsif controller == "registrations"
			t('sign_up')

		elsif controller == "admin_setup"
			t(:admin_setup)

		

		end
	end

	def application_page_title(controller, action)
		if controller == "home" && action == "index"
			t(:application_home_page)
		end
	end
	

	def get_user(user_id)
		user = User.find(user_id)
		return user if user.present?
	end

	def product_thumbnail(product)
		#image = path_to_image('imofy.png')
		#mini_image = MiniMagick::Image.new(image)
        if product.thumbnail.attached?
            image_tag product.thumbnail.variant(resize: "308x205")
        else
            image_tag 'thumbnails/post-missing.jpg'
        end
	end

	def product_cover_thumbnail(product)
		#image = path_to_image('imofy.png')
		#mini_image = MiniMagick::Image.new(image)
        if product.thumbnail.attached?
            image_tag product.thumbnail.variant(resize: "700x400")
        else
            image_tag 'thumbnails/post-missing.jpg'
        end
	end


	def current_shopping_cart
        session[:shopping_cart]
	end
	
	def cart_items_count
		shopping_cart = Cart.find(current_shopping_cart)
		shopping_cart.cart_items.count
	  end
end
