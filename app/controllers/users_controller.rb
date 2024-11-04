class UsersController < ApplicationController
 
  
      def index
          @users =User.all
      end
  
      def new
          @creator = User.new
      end
  
      def edit
          @thief = User.find(params[:id])
      end
      
      def show
      @explain = User.find(params[:id])
      end
  #######################################
  
      def create
          @user = User.new(user_params)
          if  @user.save
              redirect_to root_path, notice: 'User was successfully created.'
           else
             render :new
           end
      end
  
      def update
          @cyborg = User.find(params[:id])
            if @cyborg.update(user_params)
                redirect_to root_path
              else
                  render :edit
              end
            end
          
  
      def destroy 
          @blackhole = User.find(params[:id])
          @blackhole.destroy
      end
  
      private
      def user_params
          params.require(:user).permit(:name,:email, :password)
      end
  end
  