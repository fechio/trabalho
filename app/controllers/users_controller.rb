class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
	if params[:search]
    		@users = User.search(params[:search]).order("created_at DESC")
	end
  end
  def show
	@user = User.find(params[:id])
  end
end
