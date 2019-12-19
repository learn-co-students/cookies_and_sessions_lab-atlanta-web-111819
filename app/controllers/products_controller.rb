class ProductsController < ApplicationController

    def index
        # @cart = self.cart
      end
    
      def add
        self.cart << params.require(:product)
        redirect_to '/'
      end
    
      def cart
        session[:cart] || session[:cart] = []
      end
end