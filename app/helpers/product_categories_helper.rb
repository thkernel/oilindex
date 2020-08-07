module ProductCategoriesHelper

    def parent_category(product_category)
        ProductCategory.find(product_category)
    end
end
