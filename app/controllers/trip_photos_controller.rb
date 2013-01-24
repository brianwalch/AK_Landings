class TripPhotosController < ApplicationController
  # GET /trip_photos
  # GET /trip_photos.json
  def trip    
    @trip_photos = TripPhoto.where(trip_id: params[:id])
    @trip = Trip.find(params[:id])
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trip_photos }
    end
  end

  # GET /trip_photos/1
  # GET /trip_photos/1.json
  def show
    @trip_photo = TripPhoto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trip_photo }
    end
  end

  # GET /trip_photos/new
  # GET /trip_photos/new.json
  def new
    @trip_photo = TripPhoto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trip_photo }
    end
  end

  # GET /trip_photos/1/edit
  def edit
    @trip_photo = TripPhoto.find(params[:id])
  end

  # POST /trip_photos
  # POST /trip_photos.json
  def create
    @trip_photo = TripPhoto.new(params[:trip_photo])

    respond_to do |format|
      if @trip_photo.save
        format.html { redirect_to @trip_photo, notice: 'Trip photo was successfully created.' }
        format.json { render json: @trip_photo, status: :created, location: @trip_photo }
      else
        format.html { render action: "new" }
        format.json { render json: @trip_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trip_photos/1
  # PUT /trip_photos/1.json
  def update
    @trip_photo = TripPhoto.find(params[:id])

    respond_to do |format|
      if @trip_photo.update_attributes(params[:trip_photo])
        format.html { redirect_to @trip_photo, notice: 'Trip photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trip_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trip_photos/1
  # DELETE /trip_photos/1.json
  def destroy
    @trip_photo = TripPhoto.find(params[:id])
    @trip_photo.destroy

    respond_to do |format|
      format.html { redirect_to trip_photos_url }
      format.json { head :no_content }
    end
  end
end
