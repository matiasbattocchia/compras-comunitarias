class PurchasesController < ApplicationController
  # GET /purchases
  # GET /purchases.json
  def index
    @purchases = Purchase.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @purchases }
    end
  end

  # GET /purchases/1
  # GET /purchases/1.json
  def show
    @purchase = Purchase.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @purchase }
    end
  end

  # GET /purchases/new
  # GET /purchases/new.json
  def new
    @purchase = Purchase.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @purchase }
    end
  end

  # GET /purchases/1/edit
  def edit
    @purchase = Purchase.find(params[:id])
  end

  # POST /purchases
  # POST /purchases.json
  def create
    @purchase = Purchase.new(params[:purchase])

    respond_to do |format|
      if @purchase.save
        format.html { redirect_to @purchase, notice: 'Purchase was successfully created.' }
        format.json { render json: @purchase, status: :created, location: @purchase }
      else
        format.html { render action: "new" }
        format.json { render json: @purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /purchases/1
  # PUT /purchases/1.json
  def update
    @purchase = Purchase.find(params[:id])

    respond_to do |format|
      if @purchase.update_attributes(params[:purchase])
        format.html { redirect_to @purchase, notice: 'Purchase was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchases/1
  # DELETE /purchases/1.json
  def destroy
    @purchase = Purchase.find(params[:id])
    @purchase.destroy

    respond_to do |format|
      format.html { redirect_to purchases_url }
      format.json { head :no_content }
    end
  end

  # GET /purchases/1/load_prices
  def edit_prices
    @purchase = Purchase.find(params[:id])
    @products = Product.all

    @products.each do |product|
      begin
        @purchase.prices.find_by_product_id!(product.id)
      rescue
        @purchase.prices.build(product_id: product.id)
      end
    end

    respond_to do |format|
      format.html { render 'load_prices' }
    end
  end

  # PUT /purchases/1/load_prices
  def update_prices
    @purchase = Purchase.find(params[:id])

    params[:purchase][:prices_attributes].each do |prices|
      prices[:_destroy] = true if prices[:provisional].to_i == 0
    end

    respond_to do |format|
      if @purchase.update_attributes(params[:purchase])
        format.html { redirect_to @purchase, notice: 'Purchase was successfully updated.' }
      else
        format.html { render 'load_prices' }
      end
    end
  end
  
  # GET /purchases/1/preselect
  def edit_preselection
    @purchase = Purchase.find(params[:id])

    respond_to do |format|
      format.html { render 'preselect' }
    end
  end

  # PUT /purchases/1/load_prices
  def update_preselection
    @purchase = Purchase.find(params[:id])

    params[:purchase][:prices_attributes].each do |prices|
      prices[:preselected] = false unless prices.key? :preselected
    end

    respond_to do |format|
      if @purchase.update_attributes(params[:purchase])
        format.html { redirect_to @purchase, notice: 'Purchase was successfully updated.' }
      else
        format.html { render 'preselect' }
      end
    end
  end
  
  # GET /purchases/1/set_margins
  def edit_margins
    @purchase = Purchase.find(params[:id])

    respond_to do |format|
      format.html { render 'set_margins' }
    end
  end

  # PUT /purchases/1/load_prices
  def update_margins
    @purchase = Purchase.find(params[:id])

    #TODO: Rechazar formulario si hay precios sin márgenes.

    respond_to do |format|
      if @purchase.update_attributes(params[:purchase])
        format.html { redirect_to @purchase, notice: 'Purchase was successfully updated.' }
      else
        format.html { render 'set_margins' }
      end
    end
  end
end
