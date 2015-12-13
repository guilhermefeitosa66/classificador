class DiagnosedDisordersController < ApplicationController
  before_action :set_diagnosed_disorder, only: [:show, :edit, :update, :destroy]

  # GET /diagnosed_disorders
  # GET /diagnosed_disorders.json
  def index
    @diagnosed_disorders = DiagnosedDisorder.all
  end

  # GET /diagnosed_disorders/1
  # GET /diagnosed_disorders/1.json
  def show
  end

  # GET /diagnosed_disorders/new
  def new
    @diagnosed_disorder = DiagnosedDisorder.new
  end

  # GET /diagnosed_disorders/1/edit
  def edit
  end

  # POST /diagnosed_disorders
  # POST /diagnosed_disorders.json
  def create
    @diagnosed_disorder = DiagnosedDisorder.new(diagnosed_disorder_params)

    respond_to do |format|
      if @diagnosed_disorder.save
        format.html { redirect_to @diagnosed_disorder, notice: 'Diagnosed disorder was successfully created.' }
        format.json { render :show, status: :created, location: @diagnosed_disorder }
      else
        format.html { render :new }
        format.json { render json: @diagnosed_disorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diagnosed_disorders/1
  # PATCH/PUT /diagnosed_disorders/1.json
  def update
    respond_to do |format|
      if @diagnosed_disorder.update(diagnosed_disorder_params)
        format.html { redirect_to @diagnosed_disorder, notice: 'Diagnosed disorder was successfully updated.' }
        format.json { render :show, status: :ok, location: @diagnosed_disorder }
      else
        format.html { render :edit }
        format.json { render json: @diagnosed_disorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diagnosed_disorders/1
  # DELETE /diagnosed_disorders/1.json
  def destroy
    @diagnosed_disorder.destroy
    respond_to do |format|
      format.html { redirect_to diagnosed_disorders_url, notice: 'Diagnosed disorder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diagnosed_disorder
      @diagnosed_disorder = DiagnosedDisorder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diagnosed_disorder_params
      params.require(:diagnosed_disorder).permit(:disorder_id, :diagnosis_id)
    end
end
