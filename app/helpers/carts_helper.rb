module CartsHelper

    def product(id)
        Product.find(id)
    end
end
