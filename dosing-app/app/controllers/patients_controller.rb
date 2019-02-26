class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def new
    @patient  = Patient.new
    #render json: @project
  end

  def create
    @patient = Patient.new(patient_params)
    @patient.save
    # render json: @project, status: 201
    redirect_to patients_url
  end

  def show
    @patient = Patient.find(params[:id])
    # render json: @project

  end

  def edit
    @patient = Patient.find(params[:id])
    #render json: @project
  end

  def update
    @patient = Patient.find(params[:id])
    @patient.update(patient_params)
    # render json: @project
    redirect_to patients_url
  end

  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy
    # render json: {project_id: params[:id]}
    redirect_to patients_url
  end

  private

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :date_of_birth, :sex, :patient_number, :clinic_id, :doctor_id)
  end

end
