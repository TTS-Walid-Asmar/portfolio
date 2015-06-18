class ExampsController < ApplicationController
  before_action :set_examp, only: [:show, :edit, :update, :destroy]

  # GET /examps
  # GET /examps.json
  def index
    @examps = Examp.all
  end

  # GET /examps/1
  # GET /examps/1.json
  def show
  end

  # GET /examps/new
  def new
    @examp = Examp.new
  end

  # GET /examps/1/edit
  def edit
  end

  # POST /examps
  # POST /examps.json
  def create
    @examp = Examp.new(examp_params)

    respond_to do |format|
      if @examp.save
        format.html { redirect_to @examp, notice: 'Examp was successfully created.' }
        format.json { render :show, status: :created, location: @examp }
      else
        format.html { render :new }
        format.json { render json: @examp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /examps/1
  # PATCH/PUT /examps/1.json
  def update
    respond_to do |format|
      if @examp.update(examp_params)
        format.html { redirect_to @examp, notice: 'Examp was successfully updated.' }
        format.json { render :show, status: :ok, location: @examp }
      else
        format.html { render :edit }
        format.json { render json: @examp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /examps/1
  # DELETE /examps/1.json
  def destroy
    @examp.destroy
    respond_to do |format|
      format.html { redirect_to examps_url, notice: 'Examp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_examp
      @examp = Examp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def examp_params
      params.require(:examp).permit(:name)
    end
end
