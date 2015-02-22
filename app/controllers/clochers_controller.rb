class ClochersController < ApplicationController
  before_action :set_clocher, only: [:show, :edit, :update, :destroy]

  # GET /clochers
  # GET /clochers.json
  def index
    @clochers = Clocher.all
  end

  # GET /clochers/1
  # GET /clochers/1.json
  def show
  end

  # GET /clochers/new
  def new
    @clocher = Clocher.new
  end

  # GET /clochers/1/edit
  def edit
  end

  # POST /clochers
  # POST /clochers.json
  def create
    @clocher = Clocher.new(clocher_params)

    respond_to do |format|
      if @clocher.save
        format.html { redirect_to @clocher, notice: 'Clocher was successfully created.' }
        format.json { render :show, status: :created, location: @clocher }
      else
        format.html { render :new }
        format.json { render json: @clocher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clochers/1
  # PATCH/PUT /clochers/1.json
  def update
    respond_to do |format|
      if @clocher.update(clocher_params)
        format.html { redirect_to @clocher, notice: 'Clocher was successfully updated.' }
        format.json { render :show, status: :ok, location: @clocher }
      else
        format.html { render :edit }
        format.json { render json: @clocher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clochers/1
  # DELETE /clochers/1.json
  def destroy
    @clocher.destroy
    respond_to do |format|
      format.html { redirect_to clochers_url, notice: 'Clocher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clocher
      @clocher = Clocher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clocher_params
      params.require(:clocher).permit(:nom)
    end
end
