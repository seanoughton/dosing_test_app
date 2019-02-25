class ClinicsController < ApplicationController

  def index
    @clinics = Clinic.all
  end

  def new
    @clinic = Clinic.new
    #render json: @project
  end

  def create
    @clinic = Clinic.new(clinic_params)
    #@project.team_id = Project.first.id
    @clinic.save
    # render json: @project, status: 201
    redirect_to clinics_url
  end

  def show
    @clinic = Clinic.find(params[:id])
    # render json: @project

  end

  def edit
    @clinic = Clinic.find(params[:id])
    #render json: @project
  end

  def update
    @clinic = Clinic.find(params[:id])
    @clinic.update(clinic_params)
    # render json: @project
    redirect_to clinics_url
  end

  def destroy
    @clinic = Clinic.find(params[:id])
    @clinic.destroy
    # render json: {project_id: params[:id]}
    redirect_to clinics_url
  end

  private

  def clinic_params
    params.require(:clinic).permit(:name, :clinic_number, :location, patient_ids:[], doctor_ids:[])
  end


end
