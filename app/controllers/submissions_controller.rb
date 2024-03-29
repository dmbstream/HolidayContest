class SubmissionsController < ApplicationController
  # GET /submissions
  # GET /submissions.json
=begin
  def index
    @submissions = Submission.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @submissions }
    end
  end

  # GET /submissions/1
  # GET /submissions/1.json
  def show
    @submission = Submission.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @submission }
    end
  end
=end
  # GET /submissions/new
  # GET /submissions/new.json
  def new
    if cookies[:has_submitted].present?
      return redirect_to thank_you_path
    end

    @height = 1550

    @submission = Submission.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @submission }
    end
  end
=begin
  # GET /submissions/1/edit
  def edit
    @submission = Submission.find(params[:id])
  end
=end
  # POST /submissions
  # POST /submissions.json
  def create
    @submission = Submission.new(params[:submission])

    respond_to do |format|
      if @submission.save
        cookies[:has_submitted] = true
        format.html { redirect_to thank_you_path, notice: 'Submission was successfully created.' }
        format.json { render json: @submission, status: :created, location: @submission }
      else
        @height = 1800
        format.html { render action: "new" }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end
=begin
  # PUT /submissions/1
  # PUT /submissions/1.json
  def update
    @submission = Submission.find(params[:id])

    respond_to do |format|
      if @submission.update_attributes(params[:submission])
        format.html { redirect_to @submission, notice: 'Submission was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /submissions/1
  # DELETE /submissions/1.json
  def destroy
    @submission = Submission.find(params[:id])
    @submission.destroy

    respond_to do |format|
      format.html { redirect_to submissions_url }
      format.json { head :ok }
    end
  end
=end  
end
