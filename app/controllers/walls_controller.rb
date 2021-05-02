class WallsController < ApplicationController

  def index
    @walls = Wall.all

    serialized_walls = ActiveModel::ArraySerializer.new(
      @walls,
      each_serializer: WallSerializer
    )

    render json: serialized_walls, status: :ok
  end

  def create
    user = User.find_by(id: wall_params[:user_id])

    return render json: { message: "Not found a user" }, status: :not_found if user.blank?

    message = wall_params[:message]

    return render json: { message: "Missing parameter" }, status: :bad_request if message.blank?

    wall = Wall.new(message: message, user_id: user.id)

    if wall.save
      render json: WallSerializer.new(wall), status: :ok
    else
      render json: { message: "Something went wrong" }, status: :conflict
    end
  end

  private

    def wall_params
      params.permit(:message, :user_id)
    end
end
