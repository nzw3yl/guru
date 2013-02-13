class QuestionFieldsController < ApplicationController
  # GET /question_fields
  # GET /question_fields.json
  def index
    @question_fields = QuestionField.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @question_fields }
    end
  end

  # GET /question_fields/1
  # GET /question_fields/1.json
  def show
    @question_field = QuestionField.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @question_field }
    end
  end

  # GET /question_fields/new
  # GET /question_fields/new.json
  def new
    @question_field = QuestionField.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @question_field }
    end
  end

  # GET /question_fields/1/edit
  def edit
    @question_field = QuestionField.find(params[:id])
  end

  # POST /question_fields
  # POST /question_fields.json
  def create
    @question_field = QuestionField.new(params[:question_field])

    respond_to do |format|
      if @question_field.save
        format.html { redirect_to @question_field, notice: 'Question field was successfully created.' }
        format.json { render json: @question_field, status: :created, location: @question_field }
      else
        format.html { render action: "new" }
        format.json { render json: @question_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /question_fields/1
  # PUT /question_fields/1.json
  def update
    @question_field = QuestionField.find(params[:id])

    respond_to do |format|
      if @question_field.update_attributes(params[:question_field])
        format.html { redirect_to @question_field, notice: 'Question field was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @question_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_fields/1
  # DELETE /question_fields/1.json
  def destroy
    @question_field = QuestionField.find(params[:id])
    @question_field.destroy

    respond_to do |format|
      format.html { redirect_to question_fields_url }
      format.json { head :no_content }
    end
  end
end
