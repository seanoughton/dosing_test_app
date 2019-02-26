class BloodTestsController < ApplicationController

  def index
    @blood_tests = BloodTest.all
  end

  def new
    @blood_test = BloodTest.new
    #render json: @project
  end

  def create
    @blood_test = BloodTest.new(blood_test_params)
    @blood_test.save
    # render json: @project, status: 201
    redirect_to @blood_test
  end

  def show
    @blood_test = BloodTest.find(params[:id])
    @patient = Patient.find(@blood_test.patient_id)
    # render json: @project

  end

  def edit
    @blood_test = BloodTest.find(params[:id])
    #render json: @project
  end

  def update
    @blood_test = BloodTest.find(params[:id])
    @blood_test.update(blood_test_params)
    # render json: @project
    redirect_to @blood_test
  end

  def destroy
    @blood_test = BloodTest.find(params[:id])
    @blood_test.destroy
    # render json: {project_id: params[:id]}
    redirect_to blood_tests_url
  end

  private

  def blood_test_params
    params.require(:blood_test).permit(:tsat, :ferrin, :date, :patient_id)
  end

end
