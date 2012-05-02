class EventTagsController < ApplicationController
  # GET /event_tags
  # GET /event_tags.json
  def index
    @event_tags = EventTag.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @event_tags }
    end
  end

  # GET /event_tags/1
  # GET /event_tags/1.json
  def show
    @event_tag = EventTag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event_tag }
    end
  end

  # GET /event_tags/new
  # GET /event_tags/new.json
  def new
    @event_tag = EventTag.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event_tag }
    end
  end

  # GET /event_tags/1/edit
  def edit
    @event_tag = EventTag.find(params[:id])
  end

  # POST /event_tags
  # POST /event_tags.json
  def create
    @event_tag = EventTag.new(params[:event_tag])

    respond_to do |format|
      if @event_tag.save
        format.html { redirect_to @event_tag, notice: 'Event tag was successfully created.' }
        format.json { render json: @event_tag, status: :created, location: @event_tag }
      else
        format.html { render action: "new" }
        format.json { render json: @event_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /event_tags/1
  # PUT /event_tags/1.json
  def update
    @event_tag = EventTag.find(params[:id])

    respond_to do |format|
      if @event_tag.update_attributes(params[:event_tag])
        format.html { redirect_to @event_tag, notice: 'Event tag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_tags/1
  # DELETE /event_tags/1.json
  def destroy
    @event_tag = EventTag.find(params[:id])
    @event_tag.destroy

    respond_to do |format|
      format.html { redirect_to event_tags_url }
      format.json { head :no_content }
    end
  end
end
