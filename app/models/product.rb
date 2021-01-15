class Product < ActiveRecord::Base
    belongs_to :category, class_name: "Category"
    paginates_per 8
    
    class << self

        def order_products order_by=:asc
            if(@@order_by != order_by)
                @@products = Product.all.order(name: order_by)
                @@order_by = order_by
            end
        end

        def all_products
            @@products
        end

        def initialize
            @@products ||= Product.all.order(name: :asc)
            @@order_by ||= :asc
        end

    end

end
