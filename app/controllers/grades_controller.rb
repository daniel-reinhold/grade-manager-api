class GradesController < ApplicationController
  before_action :set_user
  before_action :set_subject
  before_action :set_grade, only: [:show, :update, :destroy]

  # GET /users/1/subjects/1/grades
  def index
    render :json => @subject.grades.order(:id => :asc)
  end

  # GET /users/1/subjects/1/grades/1
  def show
    render :json => @grade
  end

  # POST /users/1/subjects/1/grades
  def create
    @grade = Grade.new(grade_params)

    if @grade.save
      render :json => @grade, :status => :created, :location => @grade
    else
      render :json => @grade.errors, :status => :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1/subjects/1/grades/1
  def update
    if @grade.update(grade_params)
      render json: @grade
    else
      render json: @grade.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1/subjects/1/grades/1
  def destroy
    @grade.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:user_id])
    end

    def set_subject
      @subject = @user.subjects.find(params[:subject_id])
    end

    def set_grade
      @grade = @subject.grades.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def grade_params
      params.permit(:grade, :weighting, :subject_id)
    end
end
