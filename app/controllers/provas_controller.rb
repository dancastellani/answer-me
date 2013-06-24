class ProvasController < ApplicationController
  # GET /provas
  # GET /provas.json
  def index
    @provas = Prova.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @provas }
    end
  end

  # GET /provas/1
  # GET /provas/1.json
  def show
    @prova = Prova.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prova }
    end
  end

  # GET /provas/new
  # GET /provas/new.json
  def new
    @prova = Prova.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prova }
    end
  end

  # GET /provas/1/edit
  def edit
    @prova = Prova.find(params[:id])
  end

  # POST /provas
  # POST /provas.json
  def create
    @prova = Prova.new(params[:prova])

    respond_to do |format|
      if @prova.save
        format.html { redirect_to @prova, notice: 'Prova was successfully created.' }
        format.json { render json: @prova, status: :created, location: @prova }
      else
        format.html { render action: "new" }
        format.json { render json: @prova.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /provas/1
  # PUT /provas/1.json
  def update
    @prova = Prova.find(params[:id])

    respond_to do |format|
      if @prova.update_attributes(params[:prova])
        format.html { redirect_to @prova, notice: 'Prova was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prova.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /provas/1
  # DELETE /provas/1.json
  def destroy
    @prova = Prova.find(params[:id])
    @prova.destroy

    respond_to do |format|
      format.html { redirect_to provas_url }
      format.json { head :no_content }
    end
  end
end
