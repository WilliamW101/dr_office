class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :edit, :update, :destroy]

  def index
    @doctors = Doctor.all
  end

  def show
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to doctors_path, success: 'Doctor Successfully Created!'
    else
      render :new, error: 'Something Went Wrong!'
    end
  end

  def edit
  end

  def update
    if @doctor.update(doctor_params)
      redirect_to @doctor, success: 'Doctor Successfully Updated!'
    else
      render :edit, error: 'Something Went Wrong!'
    end
  end

  def destroy
    @doctor.destroy
    redirect_to doctors_url, success: 'Deleted'
  end

  private
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    def doctor_params
      params.require(:doctor).permit(:name, :specality)
    end
end
