class FeedTablesController < ApplicationController
  # GET /feed_tables
  # GET /feed_tables.json
  def index
    @feed_tables = FeedTable.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @feed_tables }
    end
  end

  # GET /feed_tables/1
  # GET /feed_tables/1.json
  def show
    @feed_table = FeedTable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @feed_table }
    end
  end

  # GET /feed_tables/new
  # GET /feed_tables/new.json
  def new
    @feed_table = FeedTable.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @feed_table }
    end
  end

  # GET /feed_tables/1/edit
  def edit
    @feed_table = FeedTable.find(params[:id])
  end

  # POST /feed_tables
  # POST /feed_tables.json
  def create
    @feed_table = FeedTable.new(params[:feed_table])

    respond_to do |format|
      if @feed_table.save
        format.html { redirect_to @feed_table, notice: 'Feed table was successfully created.' }
        format.json { render json: @feed_table, status: :created, location: @feed_table }
      else
        format.html { render action: "new" }
        format.json { render json: @feed_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /feed_tables/1
  # PUT /feed_tables/1.json
  def update
    @feed_table = FeedTable.find(params[:id])

    respond_to do |format|
      if @feed_table.update_attributes(params[:feed_table])
        format.html { redirect_to @feed_table, notice: 'Feed table was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @feed_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feed_tables/1
  # DELETE /feed_tables/1.json
  def destroy
    @feed_table = FeedTable.find(params[:id])
    @feed_table.destroy

    respond_to do |format|
      format.html { redirect_to feed_tables_url }
      format.json { head :no_content }
    end
  end
end
