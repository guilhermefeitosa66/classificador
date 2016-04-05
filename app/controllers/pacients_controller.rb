class PacientsController < ApplicationController
  before_action :set_pacient, only: [:show, :edit, :update, :destroy, :select_pacient]

  def select_pacient
    session[:pacient] = @pacient.id
    redirect_to pacients_path, notice: 'Pacient selected successfully'
  end

  def deselect_pacient
    session[:pacient] = nil
    redirect_to pacients_path, notice: 'Pacient deselected successfully'
  end

  def index
    @pacients = current_medic.pacients
  end

  def show
  end

  def new
    @pacient = Pacient.new
  end

  def edit
  end

  def create
    @pacient = Pacient.new(pacient_params)
    @pacient.medic_id = current_medic.id

    respond_to do |format|
      if @pacient.save
        format.html { redirect_to @pacient, notice: 'Pacient was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @pacient.update(pacient_params)
        format.html { redirect_to @pacient, notice: 'Pacient was successfully updated.' }
        format.json { render :show, status: :ok, location: @pacient }
      else
        format.html { render :edit }
        format.json { render json: @pacient.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @pacient.destroy
    respond_to do |format|
      format.html { redirect_to pacients_url, notice: 'Pacient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_pacient
      @pacient = current_medic.pacients.where(id: params[:id]).first

      @pacient.build_user if @pacient.user.nil?

      if @pacient.nil?
        redirect_to pacients_path, alert: 'Pacient not found'
      end
    end

    def pacient_params
      params.require(:pacient).permit(:name, :birthday, :gender_id)
    end
end
