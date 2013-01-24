class FaafacilitiesController < ApplicationController
  # GET /faafacilities
  # GET /faafacilities.json
  def index
    @faafacilities = Faafacility.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @faafacilities }
    end
  end

  # GET /faafacilities/1
  # GET /faafacilities/1.json
  def show
    @faafacility = Faafacility.find(params[:id])
    @remarks = @faafacility.remarks
    @faarunways = @faafacility.faarunways
    @faaschedules = @faafacility.faaschedules

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @faafacility }
    end
  end

  # GET /faafacilities/new
  # GET /faafacilities/new.json
  def new
    @faafacility = Faafacility.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @faafacility }
    end
  end

  # GET /faafacilities/1/edit
  def edit
    @faafacility = Faafacility.find(params[:id])
  end

  # POST /faafacilities
  # POST /faafacilities.json
  def create
    @faafacility = Faafacility.new(params[:faafacility])

    respond_to do |format|
      if @faafacility.save
        format.html { redirect_to @faafacility, notice: 'Faafacility was successfully created.' }
        format.json { render json: @faafacility, status: :created, location: @faafacility }
      else
        format.html { render action: "new" }
        format.json { render json: @faafacility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /faafacilities/1
  # PUT /faafacilities/1.json
  def update
    @faafacility = Faafacility.find(params[:id])

    respond_to do |format|
      if @faafacility.update_attributes(params[:faafacility])
        format.html { redirect_to @faafacility, notice: 'Faafacility was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @faafacility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faafacilities/1
  # DELETE /faafacilities/1.json
  def destroy
    @faafacility = Faafacility.find(params[:id])
    @faafacility.destroy

    respond_to do |format|
      format.html { redirect_to faafacilities_url }
      format.json { head :no_content }
    end
  end

  def index
    @faafacilities = Faafacility.search(params[:search])
  end
end
