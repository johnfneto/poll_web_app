class Survey1sController < ApplicationController
  # GET /survey1s
  # GET /survey1s.json
  def index
    @survey1s = Survey1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @survey1s }
    end
  end

  # GET /survey1s/1
  # GET /survey1s/1.json
  def show
    @survey1 = Survey1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @survey1 }
    end
  end

  # GET /survey1s/new
  # GET /survey1s/new.json
  def new
    @survey1 = Survey1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @survey1 }
    end
  end

  # GET /survey1s/1/edit
  def edit
    @survey1 = Survey1.find(params[:id])
  end

  # POST /survey1s
  # POST /survey1s.json
  def create
    @survey1 = Survey1.new(params[:survey1])

    respond_to do |format|
      if @survey1.save
        format.html { redirect_to @survey1, notice: 'Survey1 was successfully created.' }
        format.json { render json: @survey1, status: :created, location: @survey1 }
      else
        format.html { render action: "new" }
        format.json { render json: @survey1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /survey1s/1
  # PUT /survey1s/1.json
  def update
    @survey1 = Survey1.find(params[:id])

    respond_to do |format|
      if @survey1.update_attributes(params[:survey1])
        format.html { redirect_to @survey1, notice: 'Survey1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @survey1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey1s/1
  # DELETE /survey1s/1.json
  def destroy
    @survey1 = Survey1.find(params[:id])
    @survey1.destroy

    respond_to do |format|
      format.html { redirect_to survey1s_url }
      format.json { head :no_content }
    end
  end
end
