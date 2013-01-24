class PlanePhotosController < ApplicationController
  # GET /plane_photos
  # GET /plane_photos.json
  def plane
    @plane_photos = PlanePhoto.where(plane_id: params[:id])
    @plane = Plane.find(params[:id])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @plane_photos }
    end
  end

  # GET /plane_photos/1
  # GET /plane_photos/1.json
  def show
    @plane_photo = PlanePhoto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plane_photo }
    end
  end

  # GET /plane_photos/new
  # GET /plane_photos/new.json
  def new
    @plane_photo = PlanePhoto.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @plane_photo }
    end
  end

  # GET /plane_photos/1/edit
  def edit
    @plane_photo = PlanePhoto.find(params[:id])
  end

  # POST /plane_photos
  # POST /plane_photos.json
  def create
    @plane_photo = PlanePhoto.new(params[:plane_photo])

    respond_to do |format|
      if @plane_photo.save
        format.html { redirect_to @plane_photo, notice: 'Plane photo was successfully created.' }
        format.json { render json: @plane_photo, status: :created, location: @plane_photo }
      else
        format.html { render action: "new" }
        format.json { render json: @plane_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /plane_photos/1
  # PUT /plane_photos/1.json
  def update
    @plane_photo = PlanePhoto.find(params[:id])

    respond_to do |format|
      if @plane_photo.update_attributes(params[:plane_photo])
        format.html { redirect_to @plane_photo, notice: 'Plane photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @plane_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plane_photos/1
  # DELETE /plane_photos/1.json
  def destroy
    @plane_photo = PlanePhoto.find(params[:id])
    @plane_photo.destroy

    respond_to do |format|
      format.html { redirect_to plane_photos_url }
      format.json { head :no_content }
    end
  end

end
