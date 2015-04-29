class MortsController < ApplicationController
  before_action :set_mort, only: [:show, :edit, :update, :destroy, :historique]

  # GET /morts
  # GET /morts.json
  def index
    @morts = Mort.all_with_total
    # render plain: Mort.top5_oldest
  end

  # GET /morts/1
  # GET /morts/1.json
  def show
  end

  # GET /morts/new
  def new
    @mort = Mort.new
  end

  # GET /morts/1/edit
  def edit
  end

  # GET /morts/1/historique
  def historique
    @transactions=@mort.transactions
    render 'transactions/index.html'
  end
  
  # GET /morts/top20
  def top20
    @morts=Mort.top_oldest(20)
  end
  
  # POST /morts
  # POST /morts.json
  def create
    @mort = Mort.new(mort_params)

    respond_to do |format|
      if @mort.save
        format.html { redirect_to @mort, notice: 'Mort was successfully created.' }
        format.json { render :show, status: :created, location: @mort }
      else
        format.html { render :new }
        format.json { render json: @mort.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /morts/1
  # PATCH/PUT /morts/1.json
  def update
    respond_to do |format|
      if @mort.update(mort_params)
        format.html { redirect_to @mort, notice: 'Mort was successfully updated.' }
        format.json { render :show, status: :ok, location: @mort }
      else
        format.html { render :edit }
        format.json { render json: @mort.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /morts/1
  # DELETE /morts/1.json
  def destroy
    @mort.destroy
    respond_to do |format|
      format.html { redirect_to morts_url, notice: 'Mort was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mort
      @mort = Mort.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mort_params
      params.require(:mort).permit(:nom, :prenom, :date_de_deces, :clocher_id, :planification_libre)
    end
end
