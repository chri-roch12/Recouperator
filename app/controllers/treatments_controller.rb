class TreatmentsController < ApplicationController

  def index
    if params[:user_id]
      @user = User.find(params[:id])
      if @user
        @treatments = @user.treatment
      else
        redirect_to user
      end
      @treatmnents = current_user.treatments
    end
  end

  def show
    @treatment = Treatment.find(params[:id])
  end

  def new
    @treatment = Treatment.new
  end

  def create
    @treatment = Treatment.create(treatment_params)
    @treatment.user = current_user
    if @treatment.save
      redirect_to patient_treatment_path(@treatment), notice: 'Treatment was successfully created.'
    else
      render :new
    end
  end

  def edit
    @treatment = Treatment.find(params[:id])
  end

  def update
    @treatment = Treatment.find(params[:id])
    if @treatment.update(treatment_params)
      redirect_to patient_treatment_path(@treatment), notice: 'Treatment was successfully updated.'
    else
      render :new
    end
  end

  def destroy
    treatment = Treatment.find(params[:id])
    treatment.destroy
    redirect_to patient_treatments_path
  end

  private

####for later
  # def set_treatment
  #   @treatment = Treatment.find(params[:id])
  # end

  def treatment_params
    params.require(:treatment).permit(:name, :injury, :frequency, :duration)
  end

end
