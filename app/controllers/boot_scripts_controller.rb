class BootScriptsController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_boot_script, only: [:show, :edit, :update, :destroy]

  # GET /boot_scripts
  # GET /boot_scripts.json
  def index
    @boot_scripts = BootScript.all
  end

  # GET /boot_scripts/1
  # GET /boot_scripts/1.json
  def show
  end

  # GET /boot_scripts/new
  def new
    @boot_script = BootScript.new
  end

  # GET /boot_scripts/1/edit
  def edit
  end

  # POST /boot_scripts
  # POST /boot_scripts.json
  def create
    @boot_script = BootScript.new(boot_script_params)
    @boot_script.user = current_user

    respond_to do |format|
      if @boot_script.save
        format.html { redirect_to @boot_script, notice: 'Boot script was successfully created.' }
        format.json { render :show, status: :created, location: @boot_script }
      else
        format.html { render :new }
        format.json { render json: @boot_script.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boot_scripts/1
  # PATCH/PUT /boot_scripts/1.json
  def update
    respond_to do |format|
      if @boot_script.update(boot_script_params)
        format.html { redirect_to @boot_script, notice: 'Boot script was successfully updated.' }
        format.json { render :show, status: :ok, location: @boot_script }
      else
        format.html { render :edit }
        format.json { render json: @boot_script.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boot_scripts/1
  # DELETE /boot_scripts/1.json
  def destroy
    @boot_script.destroy
    respond_to do |format|
      format.html { redirect_to boot_scripts_url, notice: 'Boot script was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boot_script
      @boot_script = BootScript.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boot_script_params
      params.require(:boot_script).permit(:file_name, :body, :user_id, :accessibility)
    end
end
