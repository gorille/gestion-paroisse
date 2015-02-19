class ParoissesController < ApplicationController
  before_action :set_paroiss, only: [:show, :edit, :update, :destroy]

  # GET /paroisses
  # GET /paroisses.json
  def index
    @paroisses = Paroisse.all
  end

  # GET /paroisses/1
  # GET /paroisses/1.json
  def show
  end

  # GET /paroisses/new
  def new
    @paroiss = Paroisse.new
  end

  # GET /paroisses/1/edit
  def edit
  end

  # POST /paroisses
  # POST /paroisses.json
  def create
    @paroiss = Paroisse.new(paroiss_params)

    respond_to do |format|
      if @paroiss.save
        format.html { redirect_to @paroiss, notice: 'Paroisse was successfully created.' }
        format.json { render :show, status: :created, location: @paroiss }
      else
        format.html { render :new }
        format.json { render json: @paroiss.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paroisses/1
  # PATCH/PUT /paroisses/1.json
  def update
    respond_to do |format|
      if @paroiss.update(paroiss_params)
        format.html { redirect_to @paroiss, notice: 'Paroisse was successfully updated.' }
        format.json { render :show, status: :ok, location: @paroiss }
      else
        format.html { render :edit }
        format.json { render json: @paroiss.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paroisses/1
  # DELETE /paroisses/1.json
  def destroy
    @paroiss.destroy
    respond_to do |format|
      format.html { redirect_to paroisses_url, notice: 'Paroisse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paroiss
      @paroiss = Paroisse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paroiss_params
      params.require(:paroisse).permit(:nom)
    end
end
