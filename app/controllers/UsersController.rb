class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # Lógica adicional após a criação bem-sucedida do usuário
    else
      # Lógica adicional em caso de erro na criação do usuário
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
