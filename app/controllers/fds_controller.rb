class FdsController < ApplicationController
  # GET /fds
  # GET /fds.xml
  def index
    @fds = Fd.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fds }
    end
  end

  # GET /fds/1
  # GET /fds/1.xml
  def show
    @fd = Fd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fd }
    end
  end

  # GET /fds/new
  # GET /fds/new.xml
  def new
    @fd = Fd.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fd }
    end
  end

  # GET /fds/1/edit
  def edit
    @fd = Fd.find(params[:id])
  end

  # POST /fds
  # POST /fds.xml
  def create
    if params[:fd][:utc_end].strip() == ''
      if params[:fd][:utc_begin].to_i() == 23
        params[:fd][:utc_end] = 0
      else
        params[:fd][:utc_end] = (params[:fd][:utc_begin].to_i() * 10000) + 10000
      end
    end
    @fd = Fd.new(params[:fd])

    respond_to do |format|
      if @fd.save
        flash[:notice] = 'Fd was successfully created.'
        format.html { redirect_to(@fd) }
        format.xml  { render :xml => @fd, :status => :created, :location => @fd }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @fd.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fds/1
  # PUT /fds/1.xml
  def update
    @fd = Fd.find(params[:id])

    respond_to do |format|
      if @fd.update_attributes(params[:fd])
        flash[:notice] = 'Fd was successfully updated.'
        format.html { redirect_to(@fd) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fd.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fds/1
  # DELETE /fds/1.xml
  def destroy
    @fd = Fd.find(params[:id])
    @fd.destroy

    respond_to do |format|
      format.html { redirect_to(fds_url) }
      format.xml  { head :ok }
    end
  end
end
