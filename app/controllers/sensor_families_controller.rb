class SensorFamiliesController < ApplicationController
  before_action :set_sensor_family, only: [:show, :edit, :update, :destroy]

  # GET /sensor_families
  # GET /sensor_families.json
  def index
    @sensor_families = SensorFamily.all
  end

  # GET /sensor_families/1
  # GET /sensor_families/1.json
  def show
  end

  # GET /sensor_families/new
  def new
    @sensor_family = SensorFamily.new
  end

  # GET /sensor_families/1/edit
  def edit
  end

  # POST /sensor_families
  # POST /sensor_families.json
  def create
    @sensor_family = SensorFamily.new(sensor_family_params)

    respond_to do |format|
      if @sensor_family.save
        format.html { redirect_to @sensor_family, notice: 'Sensor family was successfully created.' }
        format.json { render :show, status: :created, location: @sensor_family }
      else
        format.html { render :new }
        format.json { render json: @sensor_family.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sensor_families/1
  # PATCH/PUT /sensor_families/1.json
  def update
    respond_to do |format|
      if @sensor_family.update(sensor_family_params)
        format.html { redirect_to @sensor_family, notice: 'Sensor family was successfully updated.' }
        format.json { render :show, status: :ok, location: @sensor_family }
      else
        format.html { render :edit }
        format.json { render json: @sensor_family.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sensor_families/1
  # DELETE /sensor_families/1.json
  def destroy
    @sensor_family.destroy
    respond_to do |format|
      format.html { redirect_to sensor_families_url, notice: 'Sensor family was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sensor_family
      @sensor_family = SensorFamily.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sensor_family_params
      params.require(:sensor_family).permit(:name, :descr, :technology_id)
    end
end
