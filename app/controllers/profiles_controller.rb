class ProfilesController < ApplicationController
  def index

  end

    def show
      @user = User.find(params[:id])
      @profile = @user.profile
    end
  
  
end
