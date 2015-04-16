class DonnateursController < ApplicationController
  before_action :set_donnateur, only: [:show, :edit, :update, :destroy]

  # GET /donnateurs
  # GET /donnateurs.json
  def index
    @donnateurs = Donnateur.order(:nom).all
  end

  # GET /donnateurs/1
  # GET /donnateurs/1.json
  def show
  end

  # GET /donnateurs/new
  def new
    @donnateur = Donnateur.new
  end

  # GET /donnateurs/1/edit
  def edit
  end

  # POST /donnateurs
  # POST /donnateurs.json
  def create
    @donnateur = Donnateur.new(donnateur_params)

    respond_to do |format|
      if @donnateur.save
        format.html { redirect_to @donnateur, notice: 'Donnateur was successfully created.' }
        format.json { render :show, status: :created, location: @donnateur }
      else
        format.html { render :new }
        format.json { render json: @donnateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donnateurs/1
  # PATCH/PUT /donnateurs/1.json
  def update
    respond_to do |format|
      if @donnateur.update(donnateur_params)
        format.html { redirect_to @donnateur, notice: 'Donnateur was successfully updated.' }
        format.json { render :show, status: :ok, location: @donnateur }
      else
        format.html { render :edit }
        format.json { render json: @donnateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donnateurs/1
  # DELETE /donnateurs/1.json
  def destroy
    @donnateur.destroy
    respond_to do |format|
      format.html { redirect_to donnateurs_url, notice: 'Donnateur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donnateur
      @donnateur = Donnateur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donnateur_params
      params.require(:donnateur).permit(:nom, :prenom, :adresse_1, :adresse_2, :code_postal, :ville, :telephone)
    end
end
