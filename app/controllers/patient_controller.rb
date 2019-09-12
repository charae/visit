class PatientController < ApplicationController
  before_action :set_patient, only: [show,  :destroy]

  def index
    @patient = Patient.all 
  end

  def show
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(user_params)

    if @patient.save
      redirect_to @patient 
    else
      render :new
    end
end

def destroy
  @patient.destroy
  
else redirect_to patients_path
end

private
def set_patient
  @patient = Patient.find(params[:id])
end

def patient_params
  params.require(:user).permit(:name, :age)
end

