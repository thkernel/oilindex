module ProductsHelper

    def product_category(product_category_id)
        ProductCategory.find(product_category_id)
    end
end
