class AddressesController < ApplicationController
  def index
    @addresses = Address.all
  end
  def show
    @address = Address.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @phone }
    end
  end

  def new
    @address = Address.new
    @people = Person.all
    @destinations = ["home" ,"cottage", "office", "other"]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @phone }
    end
  end

  def edit
    @address = Address.find(params[:id])
    @people = Person.all
    @destinations = ["home" ,"cottage", "office", "other"]
  end
  def create
    @address = Address.new(params[:address])

    respond_to do |format|
      if @address.save
        format.html { redirect_to @address, notice: 'Address was successfully created.' }
        format.json { render json: @address, status: :created, location: @address }
      else
        format.html { render action: "new" }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /addresses/1
  # PUT /addresses/1.json
  def update
    @address = Address.find(params[:id])

    respond_to do |format|
      if @address.update_attributes(params[:address])
        format.html { redirect_to @address, notice: 'Address was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addresses/1
  # DELETE /addresses/1.json
  def destroy
    @address = Address.find(params[:id])
    @address.destroy

    respond_to do |format|
      format.html { redirect_to addresses_url }
      format.json { head :no_content }
    end
  end

end