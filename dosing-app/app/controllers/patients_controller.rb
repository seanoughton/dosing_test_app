class PatientsController < ApplicationController

  def index
    @patients = Patient.all
    render json: @patients
  end

  def new
    @patient  = Patient.new
    render json: @patient
  end

  def create
    @patient = Patient.new(patient_params)
    @patient.save
    render json: @patient, status: 201
    # redirect_to patients_url
  end

  def show
    @patient = Patient.find(params[:id])
    render json: @patient

  end

  def edit
    @patient = Patient.find(params[:id])
    render json: @patient
  end

  def update
    @patient = Patient.find(params[:id])
    @patient.update(patient_params)
    render json: @patient
    # redirect_to patients_url
  end

  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy
    render json: {patient_id: params[:id]}
    # redirect_to patients_url
  end

  private

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :date_of_birth, :sex, :patient_number, :clinic_id, :doctor_id)
  end

end
