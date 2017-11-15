class UsersController < ApplicationController

  before_action :set_user, only: :show
  def new
    # @user = User.new
  end

  def index
    @users = User.all
  end

  # def show
  # end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find_by id: params[:id]
    @user = User.fnsind(params[:id])
  end
  def user_params
    params.require(:user).permit(:name, :surname, :phone, :email, :balance, :added, :held)
  end
end
