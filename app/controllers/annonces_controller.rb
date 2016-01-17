class AnnoncesController < ApplicationController
  before_action :set_annonce, only: [:show, :edit, :update, :destroy]

  # GET /annonces
  # GET /annonces.json
  def index
    @annonces = Annonce.paginate(page: params[:page], per_page: 3)
  end

  # GET /annonces/1
  # GET /annonces/1.json
  def show
  end

  # GET /annonces/new
  def new
    @annonce = Annonce.new
  end

  # GET /annonces/1/edit
  def edit
  end

  # POST /annonces
  # POST /annonces.json
  def create
    @annonce = Annonce.new(annonce_params)
    @annonce.user = User.first
    respond_to do |format|
      if @annonce.save
        flash[:success] = 'Votre annonce a bien ete cree.'
        format.html { redirect_to @annonce }
        format.json { render :show, status: :created, location: @annonce }
      else
        format.html { render :new }
        format.json { render json: @annonce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /annonces/1
  # PATCH/PUT /annonces/1.json
  def update
    respond_to do |format|
      if @annonce.update(annonce_params)
        flash[:success] = 'Votre annonce a bien ete modifiee.'
        format.html { redirect_to @annonce }
        format.json { render :show, status: :ok, location: @annonce }
      else
        format.html { render :edit }
        format.json { render json: @annonce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /annonces/1
  # DELETE /annonces/1.json
  def destroy
    @annonce.destroy
    respond_to do |format|
      flash[:danger] = 'Votre annonce a bien ete supprime.'
      format.html { redirect_to annonces_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_annonce
      @annonce = Annonce.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def annonce_params
      params.require(:annonce).permit(:marque, :modele, :couleur, :model_year, :price, :description, :carburant, :boite_vitesse, {imgs: []})
    end
end
