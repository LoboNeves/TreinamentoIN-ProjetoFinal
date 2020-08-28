class SignInController < ApplicationController
  def login
    @user = User.find_by(email: params[:email])
    @user = @user&.authenticate(params[:password])
    if @user
      token = JsonWebToken.encode(@user)
      render json: {token: token, user: @user}
    else
      render json: {error: "Acesso não autorizado"}, status: 422
    end
  end
end
