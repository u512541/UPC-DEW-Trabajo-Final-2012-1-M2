class DetalleproductosController < ApplicationController
  # GET /detalleproductos
  # GET /detalleproductos.json
  def index
    @detalleproductos = Detalleproducto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @detalleproductos }
    end
  end

  # GET /detalleproductos/1
  # GET /detalleproductos/1.json
  def show
    @detalleproducto = Detalleproducto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @detalleproducto }
    end
  end

  # GET /detalleproductos/new
  # GET /detalleproductos/new.json
  def new
    @detalleproducto = Detalleproducto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @detalleproducto }
    end
  end

  # GET /detalleproductos/1/edit
  def edit
    @detalleproducto = Detalleproducto.find(params[:id])
  end

  # POST /detalleproductos
  # POST /detalleproductos.json
  def create
    @detalleproducto = Detalleproducto.new(params[:detalleproducto])

    respond_to do |format|
      if @detalleproducto.save
        format.html { redirect_to @detalleproducto, notice: 'Detalleproducto was successfully created.' }
        format.json { render json: @detalleproducto, status: :created, location: @detalleproducto }
      else
        format.html { render action: "new" }
        format.json { render json: @detalleproducto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /detalleproductos/1
  # PUT /detalleproductos/1.json
  def update
    @detalleproducto = Detalleproducto.find(params[:id])

    respond_to do |format|
      if @detalleproducto.update_attributes(params[:detalleproducto])
        format.html { redirect_to @detalleproducto, notice: 'Detalleproducto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @detalleproducto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalleproductos/1
  # DELETE /detalleproductos/1.json
  def destroy
    @detalleproducto = Detalleproducto.find(params[:id])
    @detalleproducto.destroy

    respond_to do |format|
      format.html { redirect_to detalleproductos_url }
      format.json { head :no_content }
    end
  end
end
