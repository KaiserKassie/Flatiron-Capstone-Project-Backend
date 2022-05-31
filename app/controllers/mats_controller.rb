class MatsController < ApplicationController
  before_action :set_mat, only: %i[ show edit update destroy ]

  def fav
    @mat = Mat.all.find(params[:mat_id])
    @user = User.all.find(params[:user_id])
    MatFav.create(user_id: @user.id, mat_id: @mat.id)
  end

  # GET /mats or /mats.json
  def index
    @mats = Mat.all
    render json: @mats
  end

  # POST /mats or /mats.json
  def create
    @mat = Mat.new(mat_params)

    respond_to do |format|
      if @mat.save
        format.html { redirect_to mat_url(@mat), notice: "Mat was successfully created." }
        format.json { render :show, status: :created, location: @mat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mats/1 or /mats/1.json
  def update
    respond_to do |format|
      if @mat.update(mat_params)
        format.html { redirect_to mat_url(@mat), notice: "Mat was successfully updated." }
        format.json { render :show, status: :ok, location: @mat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mat.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mat
      @mat = Mat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mat_params
      params.require(:mat).permit(:brand, :name, :weight, :length1, :length2, :length3, :width1, :width2, :thickness, :material, :image, :link)
    end
end
