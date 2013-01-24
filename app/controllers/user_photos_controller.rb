class UserPhotosController < ApplicationController
  # GET /user_photos
  # GET /user_photos.json
  def index
    @user_photos = current_user.user_photos.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_photos }
    end
  end

  # GET /user_photos/1
  # GET /user_photos/1.json
  def show
    @user_photo = UserPhoto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_photo }
    end
  end

  # GET /user_photos/new
  # GET /user_photos/new.json
  def new
    @user_photo = UserPhoto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_photo }
    end
  end

  # GET /user_photos/1/edit
  def edit
    @user_photo = UserPhoto.find(params[:id])
  end

  # POST /user_photos
  # POST /user_photos.json
  def create
    @user_photo = UserPhoto.new(params[:user_photo])
    @user_photo.user_id = current_user.id

    respond_to do |format|
      if @user_photo.save
        format.html { redirect_to action: "index"}
        #format.html { redirect_to @user_photo, notice: 'User photo was successfully created.' }
        format.json { render json: @user_photo, status: :created, location: @user_photo }
      else
        format.html { render action: "new" }
        format.json { render json: @user_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_photos/1
  # PUT /user_photos/1.json
  def update
    @user_photo = UserPhoto.find(params[:id])

    respond_to do |format|
      if @user_photo.update_attributes(params[:user_photo])
        format.html { redirect_to @user_photo, notice: 'User photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_photos/1
  # DELETE /user_photos/1.json
  def destroy
    @user_photo = UserPhoto.find(params[:id])
    @user_photo.destroy

    respond_to do |format|
      format.html { redirect_to user_photos_url }
      format.json { head :no_content }
    end
  end
end
