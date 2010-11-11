class RtsController < ApplicationController
  # GET /rts
  # GET /rts.xml
  def index
    @rts = Rt.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rts }
    end
  end

  # GET /rts/1
  # GET /rts/1.xml
  def show
    @rt = Rt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @rt }
    end
  end

  # GET /rts/new
  # GET /rts/new.xml
  def new
    @rt = Rt.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @rt }
    end
  end

  # GET /rts/1/edit
  def edit
    @rt = Rt.find(params[:id])
  end

  # POST /rts
  # POST /rts.xml
  def create
    @rt = Rt.new(params[:rt])

    respond_to do |format|
      if @rt.save
        flash[:notice] = 'Rt was successfully created.'
        format.html { redirect_to(@rt) }
        format.xml  { render :xml => @rt, :status => :created, :location => @rt }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @rt.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rts/1
  # PUT /rts/1.xml
  def update
    @rt = Rt.find(params[:id])

    respond_to do |format|
      if @rt.update_attributes(params[:rt])
        flash[:notice] = 'Rt was successfully updated.'
        format.html { redirect_to(@rt) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @rt.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rts/1
  # DELETE /rts/1.xml
  def destroy
    @rt = Rt.find(params[:id])
    @rt.destroy

    respond_to do |format|
      format.html { redirect_to(rts_url) }
      format.xml  { head :ok }
    end
  end
end
