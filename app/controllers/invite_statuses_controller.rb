class InviteStatusesController < ApplicationController
  # GET /invite_statuses
  # GET /invite_statuses.json
  def index
    @invite_statuses = InviteStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @invite_statuses }
    end
  end

  # GET /invite_statuses/1
  # GET /invite_statuses/1.json
  def show
    @invite_status = InviteStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @invite_status }
    end
  end

  # GET /invite_statuses/new
  # GET /invite_statuses/new.json
  def new
    @invite_status = InviteStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @invite_status }
    end
  end

  # GET /invite_statuses/1/edit
  def edit
    @invite_status = InviteStatus.find(params[:id])
  end

  # POST /invite_statuses
  # POST /invite_statuses.json
  def create
    @invite_status = InviteStatus.new(params[:invite_status])

    respond_to do |format|
      if @invite_status.save
        format.html { redirect_to @invite_status, notice: 'Invite status was successfully created.' }
        format.json { render json: @invite_status, status: :created, location: @invite_status }
      else
        format.html { render action: "new" }
        format.json { render json: @invite_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /invite_statuses/1
  # PUT /invite_statuses/1.json
  def update
    @invite_status = InviteStatus.find(params[:id])

    respond_to do |format|
      if @invite_status.update_attributes(params[:invite_status])
        format.html { redirect_to @invite_status, notice: 'Invite status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @invite_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invite_statuses/1
  # DELETE /invite_statuses/1.json
  def destroy
    @invite_status = InviteStatus.find(params[:id])
    @invite_status.destroy

    respond_to do |format|
      format.html { redirect_to invite_statuses_url }
      format.json { head :no_content }
    end
  end
end
