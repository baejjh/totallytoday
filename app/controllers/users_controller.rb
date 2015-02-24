class UsersController < ApplicationController
  def new #form to make new user
    @user = User.new
  end

  def create #restful route to make new user!
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:enter_success] = 'New user created!'
      redirect_to @user
    else
      flash[:register_errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find( params[:id] )
  end

  def edit
    @edit_user = User.find( user_params[:id] )
  end

  def update
    @update_user = User.find( id_params ).update( user_params )
    if @update_user
        redirect_to '/users/'+user_params[:id]
    else
        flash[:edit_error] = "Your message is empty."
        redirect_to '/users/'+user_params[:id]+'/edit'
    end
  end

  #define strong parameters!
  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :short_description, :quote)
    end
end