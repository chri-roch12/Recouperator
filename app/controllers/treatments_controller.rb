class TreatmentsController < ApplicationController

  def index
    if current_user.patient?
      @treatments = current_user.treatments_as_patient
    elsif current_user.clinician?
      @treatments = current_user.treatments_as_clinician
    else
      redirect_to user
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
    # @treatment.user = current_user
    if @treatment.save
      if current_user.patient?
      redirect_to patient_treatment_path(@treatment), notice: 'Treatment was successfully created.'
    elsif current_user.clinician?
      redirect_to clinician_treatment_path(@treatment), notice: 'Treatment was successfully created.'
    end
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
    params.require(:treatment).permit(:name, :injury, :frequency, :duration, :patient_id, :clinician_id)
  end

end
