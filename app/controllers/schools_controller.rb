class SchoolsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_school, only: [:update, :destroy]

  def create
    @school = School.new(school_params)
    

    respond_to do |format|
      if @school.save
        format.html { redirect_to @school, notice: 'School was successfully created.' }
        format.json { render :show, status: :created, location: @school }
      else
        format.html { render :new }
        format.json { render json: @school.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @school = School.new
  end

  def destroy
    @school.destroy
    respond_to do |format|
      format.html { redirect_to schools_index , notice: 'School was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def index

  end

  def edit 
    @school = School.find(params[:id])
  end 

  def show
    @school = School.find(params[:id])
    @schools = School.all
  end

  def update
    respond_to do |format|
      if @school.update(school_params)
        format.html { redirect_to @school, notice: 'school was successfully updated.' }
        format.json { render :show, status: :ok, location: @school }
      else
        format.html { render :edit }
        format.json { render json: @school.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_school
      @school = School.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_params
      params.require(:school).permit(:name, :email, :rut_school, :company_name, :bank_account)
    end
end
