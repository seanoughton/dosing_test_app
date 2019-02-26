class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
    render json: @doctors
  end

  def new
    @doctor  = Doctor.new
    render json: @doctor
  end

  def create
    @doctor = Doctor.new(doctor_params)
    @doctor.save
    render json: @doctor, status: 201
    # redirect_to doctors_url
  end

  def show
    @doctor = Doctor.find(params[:id])
    render json: @doctor

  end

  def edit
    @doctor = Doctor.find(params[:id])
    render json: @doctor
  end

  def update
    @doctor = Doctor.find(params[:id])
    @doctor.update(doctor_params)
    render json: @doctor
    # redirect_to doctors_url
  end

  def destroy
    @doctor = Doctor.find(params[:id])
    @doctor.destroy
    render json: {doctor_id: params[:id]}
    # redirect_to doctors_url
  end

  private

  def doctor_params
    params.require(:doctor).permit(:first_name, :last_name, :badge_number, :clinic_id, patient_ids:[])
  end

end
