class AnonsController < ApplicationController
  before_action :set_anon, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /anons
  # GET /anons.json
  def index
    @anons = Anon.all
  end

  # GET /anons/1
  # GET /anons/1.json
  def show
  end

  # GET /anons/new
  def new
    @anon = Anon.new
  end

  # GET /anons/1/edit
  def edit
  end

  # POST /anons
  # POST /anons.json
  def create
    @anon = Anon.new(anon_params)

    respond_to do |format|
      if @anon.save
        format.html { redirect_to @anon, notice: 'Anon was successfully created.' }
        format.json { render :show, status: :created, location: @anon }
      else
        format.html { render :new }
        format.json { render json: @anon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anons/1
  # PATCH/PUT /anons/1.json
  def update
    respond_to do |format|
      if @anon.update(anon_params)
        format.html { redirect_to @anon, notice: 'Anon was successfully updated.' }
        format.json { render :show, status: :ok, location: @anon }
      else
        format.html { render :edit }
        format.json { render json: @anon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anons/1
  # DELETE /anons/1.json
  def destroy
    @anon.destroy
    respond_to do |format|
      format.html { redirect_to anons_url, notice: 'Anon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anon
      @anon = Anon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anon_params
        params.require(:anon).permit(:title, :body, :user_id)
    end
end
