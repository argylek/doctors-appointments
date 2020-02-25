# frozen_string_literal: true

class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[edit update]
  before_action :set_physician
  before_action :set_patient, only: %i[new create update]
  def index
    @appointments = @physician.appointments.all
  end

  def new
    # @physicians = Physician.all
    @appointment = @physician.appointments.new
  end

  def create
    @appointment = @physician.appointments.new(appointment_params)
    # binding.pry
    if @appointment.save
      redirect_to physician_path(@physician)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @appointment.update(appointment_params)
      redirect_to physician_path(@physician)
    else
      render :edit
    end
  end

  def destroy
    @physician.appointments.find(params[:id]).destroy
    redirect_to physicians_path
  end

  def show; end

  private

  def set_patient
    @patient = Patient.all - @physician.patients
  end

  def set_physician
    @physician = Physician.find(params[:physician_id])
  end

  def appointment_params
    params.require(:appointment).permit(:date, :patient_id, :physician_id)
  end

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end
end
