class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]
  before_action :authenticate_user!, only: [:edit]

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
    render 'profile'
  end

  # GET /users/1/edit
  def edit
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id]).decorate
  end

  # Only allow a trusted parameter "white user" through.
  def user_params
    params.require(:user).permit(:email, :first_name, :last_name)
  end
end
