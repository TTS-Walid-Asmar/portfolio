class GovservsController < ApplicationController
  before_action :set_govserv, only: [:show, :edit, :update, :destroy]

  # GET /govservs
  # GET /govservs.json
  def index
    @govservs = Govserv.all
  end

  # GET /govservs/1
  # GET /govservs/1.json
  def show
  end

  # GET /govservs/new
  def new
    @govserv = Govserv.new
  end

  # GET /govservs/1/edit
  def edit
  end

  # POST /govservs
  # POST /govservs.json
  def create
    @govserv = Govserv.new(govserv_params)

    respond_to do |format|
      if @govserv.save
        format.html { redirect_to @govserv, notice: 'Govserv was successfully created.' }
        format.json { render :show, status: :created, location: @govserv }
      else
        format.html { render :new }
        format.json { render json: @govserv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /govservs/1
  # PATCH/PUT /govservs/1.json
  def update
    respond_to do |format|
      if @govserv.update(govserv_params)
        format.html { redirect_to @govserv, notice: 'Govserv was successfully updated.' }
        format.json { render :show, status: :ok, location: @govserv }
      else
        format.html { render :edit }
        format.json { render json: @govserv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /govservs/1
  # DELETE /govservs/1.json
  def destroy
    @govserv.destroy
    respond_to do |format|
      format.html { redirect_to govservs_url, notice: 'Govserv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_govserv
      @govserv = Govserv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def govserv_params
      params.require(:govserv).permit(:service)
    end
end
