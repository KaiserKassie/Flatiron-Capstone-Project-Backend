class PosesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def fav
    @pose = Pose.all.find(params[:pose_id])
    @user = User.all.find(params[:user_id])
    PoseFav.create(user_id: @user.id, pose_id: @pose.id)
    # redirect_to '/poses'
  end

  # GET /poses or /poses.json
  def index
    @poses = Pose.all
  end

  # GET /poses/1 or /poses/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pose
      @pose = Pose.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pose_params
      params.require(:pose).permit(:name, :description, :image, :target_body_area, :seated)
    end
end
