class InhabitantsController < ApplicationController
  # GET /inhabitants
  # GET /inhabitants.json
  def index
    @inhabitants = Inhabitant.order("person_id")
    #@inhabitants = Inhabitant.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inhabitants }
    end
  end

  # GET /inhabitants/1
  # GET /inhabitants/1.json
  def show
    @inhabitant = Inhabitant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inhabitant }
    end
  end

  # GET /inhabitants/new
  # GET /inhabitants/new.json
  def new
    @inhabitant = Inhabitant.new
    @people = Person.all
    @addresses = Address.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inhabitant }
    end
  end

  # GET /inhabitants/1/edit
  def edit
    @inhabitant = Inhabitant.find(params[:id])
    @people = Person.all
    @addresses = Address.all
  end

  # POST /inhabitants
  # POST /inhabitants.json
  def create
    @inhabitant = Inhabitant.new(params[:inhabitant])
    @people = Person.all
    @addresses = Address.all

    respond_to do |format|
      if @inhabitant.save
        format.html { redirect_to @inhabitant, notice: 'Inhabitant was successfully created.' }
        format.json { render json: @inhabitant, status: :created, location: @inhabitant }
      else
        format.html { render action: "new" }
        format.json { render json: @inhabitant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /inhabitants/1
  # PUT /inhabitants/1.json
  def update
    @inhabitant = Inhabitant.find(params[:id])
    @people = Person.all
    @addresses = Address.all

    respond_to do |format|
      if @inhabitant.update_attributes(params[:inhabitant])
        format.html { redirect_to @inhabitant, notice: 'Inhabitant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @inhabitant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inhabitants/1
  # DELETE /inhabitants/1.json
  def destroy
    @inhabitant = Inhabitant.find(params[:id])
    @inhabitant.destroy

    respond_to do |format|
      format.html { redirect_to inhabitants_url }
      format.json { head :no_content }
    end
  end
end
