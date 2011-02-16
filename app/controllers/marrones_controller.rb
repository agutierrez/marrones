class MarronesController < ApplicationController
  # GET /marrones
  # GET /marrones.xml
  def index
    @marrones = Marron.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @marrones }
    end
  end

  # GET /marrones/1
  # GET /marrones/1.xml
  def show
    @marron = Marron.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @marron }
    end
  end

  # GET /marrones/new
  # GET /marrones/new.xml
  def new
    @marron = Marron.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @marron }
    end
  end

  # GET /marrones/1/edit
  def edit
    @marron = Marron.find(params[:id])
  end

  # POST /marrones
  # POST /marrones.xml
  def create
    @marron = Marron.new(params[:marron])

    respond_to do |format|
      if @marron.save
        format.html { redirect_to(@marron, :notice => 'Marron was successfully created.') }
        format.xml  { render :xml => @marron, :status => :created, :location => @marron }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @marron.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /marrones/1
  # PUT /marrones/1.xml
  def update
    @marron = Marron.find(params[:id])

    respond_to do |format|
      if @marron.update_attributes(params[:marron])
        format.html { redirect_to(@marron, :notice => 'Marron was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @marron.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /marrones/1
  # DELETE /marrones/1.xml
  def destroy
    @marron = Marron.find(params[:id])
    @marron.destroy

    respond_to do |format|
      format.html { redirect_to(marrones_url) }
      format.xml  { head :ok }
    end
  end
end
