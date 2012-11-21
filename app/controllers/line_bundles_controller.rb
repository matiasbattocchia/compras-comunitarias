class LineBundlesController < ApplicationController
  # GET /line_bundles
  # GET /line_bundles.json
  def index
    @line_bundles = LineBundle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @line_bundles }
    end
  end

  # GET /line_bundles/1
  # GET /line_bundles/1.json
  def show
    @line_bundle = LineBundle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @line_bundle }
    end
  end

  # GET /line_bundles/new
  # GET /line_bundles/new.json
  def new
    @line_bundle = LineBundle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @line_bundle }
    end
  end

  # GET /line_bundles/1/edit
  def edit
    @line_bundle = LineBundle.find(params[:id])
  end

  # POST /line_bundles
  # POST /line_bundles.json
  def create
    @line_bundle = LineBundle.new(params[:line_bundle])

    respond_to do |format|
      if @line_bundle.save
        format.html { redirect_to @line_bundle, notice: 'Line bundle was successfully created.' }
        format.json { render json: @line_bundle, status: :created, location: @line_bundle }
      else
        format.html { render action: "new" }
        format.json { render json: @line_bundle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /line_bundles/1
  # PUT /line_bundles/1.json
  def update
    @line_bundle = LineBundle.find(params[:id])

    respond_to do |format|
      if @line_bundle.update_attributes(params[:line_bundle])
        format.html { redirect_to @line_bundle, notice: 'Line bundle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @line_bundle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_bundles/1
  # DELETE /line_bundles/1.json
  def destroy
    @line_bundle = LineBundle.find(params[:id])
    @line_bundle.destroy

    respond_to do |format|
      format.html { redirect_to line_bundles_url }
      format.json { head :no_content }
    end
  end
end
