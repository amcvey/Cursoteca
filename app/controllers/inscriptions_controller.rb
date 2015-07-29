class InscriptionsController < ApplicationController
  before_action :set_inscription, only: [:show, :edit, :destroy]

  # GET /subsidiaries
  # GET /subsidiaries.json
  def index
    @inscriptions = Inscription.all
  end

  
  # GET /bank_subsidiaries/1.json
  def show
  end

  # GET /bank_subsidiaries/new
  def new
    @inscription = Inscription.new
  end

  # GET /bank_subsidiaries/1/edit
  def edit
  end

  # POST /bank_subsidiaries
  # POST /bank_subsidiaries.json
  def create
    @inscription = Inscription.new(inscription_params)

    respond_to do |format|
      if @inscription.save
        format.html { redirect_to @inscription, notice: 'inscription was successfully created.' }
        format.json { render :show, status: :created, location: @inscription }
      else
        format.html { render :new }
        format.json { render json: @inscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bank_subsidiaries/1
  # PATCH/PUT /bank_subsidiaries/1.json
  def update
    respond_to do |format|
      if @inscription.update(inscription_params)
        format.html { redirect_to @subsidiary, notice: 'inscription was successfully updated.' }
        format.json { render :show, status: :ok, location: @inscription }
      else
        format.html { render :edit }
        format.json { render json: @inscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bank_subsidiaries/1
  # DELETE /bank_subsidiaries/1.json
  def destroy
    @inscription.destroy
    respond_to do |format|
      format.html { redirect_to inscriptions_url, notice: 'inscription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inscription
      @inscription = Inscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inscription_params
      params.require(:inscription).permit(:version_course_id, :user_id)
    end

end


