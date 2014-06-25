class CloudConfigsController < ApplicationController
  before_action :set_cloud_config, only: [:show, :edit, :update, :destroy]

  # GET /cloud_configs
  # GET /cloud_configs.json
  def index
    @cloud_configs = CloudConfig.all
  end

  # GET /cloud_configs/1
  # GET /cloud_configs/1.json
  def show
  end

  # GET /cloud_configs/new
  def new
    @cloud_config = CloudConfig.new
  end

  # GET /cloud_configs/1/edit
  def edit
  end

  # POST /cloud_configs
  # POST /cloud_configs.json
  def create
    @cloud_config = CloudConfig.new(cloud_config_params)

    respond_to do |format|
      if @cloud_config.save
        format.html { redirect_to @cloud_config, notice: 'Cloud config was successfully created.' }
        format.json { render :show, status: :created, location: @cloud_config }
      else
        format.html { render :new }
        format.json { render json: @cloud_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cloud_configs/1
  # PATCH/PUT /cloud_configs/1.json
  def update
    respond_to do |format|
      if @cloud_config.update(cloud_config_params)
        format.html { redirect_to @cloud_config, notice: 'Cloud config was successfully updated.' }
        format.json { render :show, status: :ok, location: @cloud_config }
      else
        format.html { render :edit }
        format.json { render json: @cloud_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cloud_configs/1
  # DELETE /cloud_configs/1.json
  def destroy
    @cloud_config.destroy
    respond_to do |format|
      format.html { redirect_to cloud_configs_url, notice: 'Cloud config was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cloud_config
      @cloud_config = CloudConfig.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cloud_config_params
      params.require(:cloud_config).permit(:user_id, :accessibility)
    end
end
