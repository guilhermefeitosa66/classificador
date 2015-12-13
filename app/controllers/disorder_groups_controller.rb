class DisorderGroupsController < ApplicationController
  before_action :set_disorder_group, only: [:show, :edit, :update, :destroy]

  # GET /disorder_groups
  # GET /disorder_groups.json
  def index
    @disorder_groups = DisorderGroup.all
  end

  # GET /disorder_groups/1
  # GET /disorder_groups/1.json
  def show
  end

  # GET /disorder_groups/new
  def new
    @disorder_group = DisorderGroup.new
  end

  # GET /disorder_groups/1/edit
  def edit
  end

  # POST /disorder_groups
  # POST /disorder_groups.json
  def create
    @disorder_group = DisorderGroup.new(disorder_group_params)

    respond_to do |format|
      if @disorder_group.save
        format.html { redirect_to @disorder_group, notice: 'Disorder group was successfully created.' }
        format.json { render :show, status: :created, location: @disorder_group }
      else
        format.html { render :new }
        format.json { render json: @disorder_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disorder_groups/1
  # PATCH/PUT /disorder_groups/1.json
  def update
    respond_to do |format|
      if @disorder_group.update(disorder_group_params)
        format.html { redirect_to @disorder_group, notice: 'Disorder group was successfully updated.' }
        format.json { render :show, status: :ok, location: @disorder_group }
      else
        format.html { render :edit }
        format.json { render json: @disorder_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disorder_groups/1
  # DELETE /disorder_groups/1.json
  def destroy
    @disorder_group.destroy
    respond_to do |format|
      format.html { redirect_to disorder_groups_url, notice: 'Disorder group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disorder_group
      @disorder_group = DisorderGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disorder_group_params
      params.require(:disorder_group).permit(:name, :description)
    end
end
