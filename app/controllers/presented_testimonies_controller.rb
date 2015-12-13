class PresentedTestimoniesController < ApplicationController
  before_action :set_presented_testimony, only: [:show, :edit, :update, :destroy]

  # GET /presented_testimonies
  # GET /presented_testimonies.json
  def index
    @presented_testimonies = PresentedTestimony.all
  end

  # GET /presented_testimonies/1
  # GET /presented_testimonies/1.json
  def show
  end

  # GET /presented_testimonies/new
  def new
    @presented_testimony = PresentedTestimony.new
  end

  # GET /presented_testimonies/1/edit
  def edit
  end

  # POST /presented_testimonies
  # POST /presented_testimonies.json
  def create
    @presented_testimony = PresentedTestimony.new(presented_testimony_params)

    respond_to do |format|
      if @presented_testimony.save
        format.html { redirect_to @presented_testimony, notice: 'Presented testimony was successfully created.' }
        format.json { render :show, status: :created, location: @presented_testimony }
      else
        format.html { render :new }
        format.json { render json: @presented_testimony.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presented_testimonies/1
  # PATCH/PUT /presented_testimonies/1.json
  def update
    respond_to do |format|
      if @presented_testimony.update(presented_testimony_params)
        format.html { redirect_to @presented_testimony, notice: 'Presented testimony was successfully updated.' }
        format.json { render :show, status: :ok, location: @presented_testimony }
      else
        format.html { render :edit }
        format.json { render json: @presented_testimony.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presented_testimonies/1
  # DELETE /presented_testimonies/1.json
  def destroy
    @presented_testimony.destroy
    respond_to do |format|
      format.html { redirect_to presented_testimonies_url, notice: 'Presented testimony was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_presented_testimony
      @presented_testimony = PresentedTestimony.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def presented_testimony_params
      params.require(:presented_testimony).permit(:pacient_id, :testimony_id)
    end
end
