class BasicUnitsController < ApplicationController
  # GET /basic_units
  # GET /basic_units.json
  def index
    @basic_units = BasicUnit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @basic_units }
    end
  end

  # GET /basic_units/1
  # GET /basic_units/1.json
  def show
    @basic_unit = BasicUnit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @basic_unit }
    end
  end

  # GET /basic_units/new
  # GET /basic_units/new.json
  def new
    @basic_unit = BasicUnit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @basic_unit }
    end
  end

  # GET /basic_units/1/edit
  def edit
    @basic_unit = BasicUnit.find(params[:id])
  end

  # POST /basic_units
  # POST /basic_units.json
  def create
    @basic_unit = BasicUnit.new(params[:basic_unit])

    respond_to do |format|
      if @basic_unit.save
        format.html { redirect_to @basic_unit, notice: 'Basic unit was successfully created.' }
        format.json { render json: @basic_unit, status: :created, location: @basic_unit }
      else
        format.html { render action: "new" }
        format.json { render json: @basic_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /basic_units/1
  # PUT /basic_units/1.json
  def update
    @basic_unit = BasicUnit.find(params[:id])

    respond_to do |format|
      if @basic_unit.update_attributes(params[:basic_unit])
        format.html { redirect_to @basic_unit, notice: 'Basic unit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @basic_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basic_units/1
  # DELETE /basic_units/1.json
  def destroy
    @basic_unit = BasicUnit.find(params[:id])
    @basic_unit.destroy

    respond_to do |format|
      format.html { redirect_to basic_units_url }
      format.json { head :no_content }
    end
  end
end
