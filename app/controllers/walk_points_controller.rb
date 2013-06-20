class WalkPointsController < ApplicationController
  # GET /walk_points
  # GET /walk_points.json
  def index
    @walk_points = WalkPoint.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @walk_points }
    end
  end

  # GET /walk_points/1
  # GET /walk_points/1.json
  def show
    @walk_point = WalkPoint.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @walk_point }
    end
  end

  # GET /walk_points/new
  # GET /walk_points/new.json
  def new
    @walk_point = WalkPoint.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @walk_point }
    end
  end

  # GET /walk_points/1/edit
  def edit
    @walk_point = WalkPoint.find(params[:id])
  end

  # POST /walk_points
  # POST /walk_points.json
  def create
    @walk_point = WalkPoint.new(params[:walk_point])

    respond_to do |format|
      if @walk_point.save
        format.html { redirect_to @walk_point, notice: 'Walk point was successfully created.' }
        format.json { render json: @walk_point, status: :created, location: @walk_point }
      else
        format.html { render action: "new" }
        format.json { render json: @walk_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /walk_points/1
  # PUT /walk_points/1.json
  def update
    @walk_point = WalkPoint.find(params[:id])

    respond_to do |format|
      if @walk_point.update_attributes(params[:walk_point])
        format.html { redirect_to @walk_point, notice: 'Walk point was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @walk_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /walk_points/1
  # DELETE /walk_points/1.json
  def destroy
    @walk_point = WalkPoint.find(params[:id])
    @walk_point.destroy

    respond_to do |format|
      format.html { redirect_to walk_points_url }
      format.json { head :no_content }
    end
  end
end
