class ProductsController < ApplicationController
    before_action :set_user 

    def set_user
        @user = User.find(params[:user_id]) 
      end
    
  def index
       @order = Order.new
      @sho = Product.all
    @user
  end

  def new
      @gro = Product.new
      @cat = Cat.all
  end

  def show
      @explain = Product.find(params[:id])

  end

  def edit
      @detec = Product.find(params[:id])
  end

  def create
      @photosynthesis = Product.new(product_params)
      if @photosynthesis.save
          redirect_to products_path	
      else
          render 'new'
      end
  end

  def update
      @run =  Product.find(params[:id])
      if @run.update(product_params)
          redirect_to @run
      else
          render 'edit'
      end
  end

      def destroy
          @aloo = Product.find(params[:id])
          @aloo.destroy
          redirect_to user_path
      end

      def product_params
          params.require(:product).permit(:name,:description,:cat_id)
      end
         

end
