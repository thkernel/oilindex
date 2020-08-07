class ApplicationController < ActionController::Base

    before_action :set_shopping_cart




    def set_shopping_cart
        if user_signed_in?
            @shopping_cart = current_user.cart.id
        else
            if session[:shopping_cart]
                @shopping_cart = Cart.find(session[:shopping_cart])
            else
                @shopping_cart = Cart.create
                session[:shopping_cart] = @shopping_cart.id
            end
        end
    end

    
end
