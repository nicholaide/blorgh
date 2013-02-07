require_dependency "blorgh/application_controller"

module Blorgh
  class PhontelesController < ApplicationController
    # GET /phonteles
    # GET /phonteles.json
    def index
      @phonteles = Phontele.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @phonteles }
      end
    end
  
    # GET /phonteles/1
    # GET /phonteles/1.json
    def show
      @phontele = Phontele.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @phontele }
      end
    end
  
    # GET /phonteles/new
    # GET /phonteles/new.json
    def new
      @phontele = Phontele.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @phontele }
      end
    end
  
    # GET /phonteles/1/edit
    def edit
      @phontele = Phontele.find(params[:id])
    end
  
    # POST /phonteles
    # POST /phonteles.json
    def create
      @phontele = Phontele.new(params[:phontele])
  
      respond_to do |format|
        if @phontele.save
          format.html { redirect_to @phontele, notice: 'Phontele was successfully created.' }
          format.json { render json: @phontele, status: :created, location: @phontele }
        else
          format.html { render action: "new" }
          format.json { render json: @phontele.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /phonteles/1
    # PUT /phonteles/1.json
    def update
      @phontele = Phontele.find(params[:id])
  
      respond_to do |format|
        if @phontele.update_attributes(params[:phontele])
          format.html { redirect_to @phontele, notice: 'Phontele was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @phontele.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /phonteles/1
    # DELETE /phonteles/1.json
    def destroy
      @phontele = Phontele.find(params[:id])
      @phontele.destroy
  
      respond_to do |format|
        format.html { redirect_to phonteles_url }
        format.json { head :no_content }
      end
    end
  end
end
