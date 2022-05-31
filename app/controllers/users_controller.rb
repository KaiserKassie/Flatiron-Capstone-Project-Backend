class UsersController < ApplicationController
  before_action :set_user, only: %i[ edit update destroy ]

  # GET /users or /users.json
  def index
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show
    #byebug
    user = User.find_by(id: session[:user_id])
    if user
      render json: user
    else
      render json: {error: "Not authorized"}, status: :unauthorized
    end
  end

  # POST /users or /users.json
  def create
    user = User.create(user_params)
    if user.valid?
      render json: user, status: :created
    else
      render json: { errors: "Username already in use" }, status: :unprocessable_entity
    end
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:username, :password, :first_name, :id)
    end
end
