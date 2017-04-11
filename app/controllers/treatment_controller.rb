class TreatmentController < ApplicationController

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

  

end
