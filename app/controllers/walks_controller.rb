class WalksController < ApplicationController
  # GET /walks
  # GET /walks.json
  def index
    @walks = Walk.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @walks }
    end
  end

  # GET /walks/1
  # GET /walks/1.json
  def show
    @walk = Walk.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @walk }
    end
  end

  # GET /walks/new
  # GET /walks/new.json
  def new
    @walk = Walk.new

    @walk.walk_points << WalkPoint.new( label: 'From' )
    @walk.walk_points << WalkPoint.new( label: 'To' )

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @walk }
    end
  end

  # GET /walks/1/edit
  def edit
    @walk = Walk.find(params[:id])
  end

  # POST /walks
  # POST /walks.json
  def create
    @walk = Walk.new(params[:walk])

    respond_to do |format|
      if @walk.save
        format.html { redirect_to @walk, notice: 'Walk was successfully created.' }
        format.json { render json: @walk, status: :created, location: @walk }
      else
        format.html { render action: "new" }
        format.json { render json: @walk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /walks/1
  # PUT /walks/1.json
  def update
    @walk = Walk.find(params[:id])

    respond_to do |format|
      if @walk.update_attributes(params[:walk])
        format.html { redirect_to @walk, notice: 'Walk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @walk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /walks/1
  # DELETE /walks/1.json
  def destroy
    @walk = Walk.find(params[:id])
    @walk.destroy

    respond_to do |format|
      format.html { redirect_to walks_url }
      format.json { head :no_content }
    end
  end
end
