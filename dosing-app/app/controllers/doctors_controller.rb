class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
  end

  def new
    @doctor  = Doctor.new
    #render json: @project
  end

  def create
    @doctor = Doctor.new(doctor_params)
    @doctor.save
    # render json: @project, status: 201
    redirect_to doctors_url
  end

  def show
    @doctor = Doctor.find(params[:id])
    # render json: @project

  end

  def edit
    @doctor = Doctor.find(params[:id])
    #render json: @project
  end

  def update
    @doctor = Doctor.find(params[:id])
    @doctor.update(doctor_params)
    # render json: @project
    redirect_to doctors_url
  end

  def destroy
    @doctor = Doctor.find(params[:id])
    @doctor.destroy
    # render json: {project_id: params[:id]}
    redirect_to doctors_url
  end

  private

  def doctor_params
    params.require(:doctor).permit(:first_name, :last_name, :badge_number, :clinic_id, patient_ids:[])
  end

end
