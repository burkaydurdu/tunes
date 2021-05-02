class UsersController < ApplicationController

  def create
    nickname = user_params[:nickname]

    return render json: { message: "Missing parameter" }, status: :bad_request if nickname.blank?

    @user = User.find_or_create_by(nickname: nickname)

    if @user
      render json: @user, status: :ok
    else
      render json: { message: "Something went wrong" }, status: :conflict
    end
  end

  private

    def user_params
      params.permit(:nickname)
    end
end
