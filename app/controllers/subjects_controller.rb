class SubjectsController < ApplicationController
  before_action :set_user, :only => [:index, :show, :update, :destroy]
  before_action :set_subject, :only => [:show, :update, :destroy]

  # GET /users/1/subjects
  def index
    render :json => @user.subjects.order(:id => :asc)
  end

  # GET /users/1/subjects/1
  def show
    render :json => @subject
  end

  # POST /users/1/subjects
  def create
    @subject = Subject.new(subject_params)

    if @subject.save
      render :json => @subject, :status => :created, :location => @subject
    else
      render :json => @subject.errors, :status => :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1/subjects/1
  def update
    if @subject.update(subject_params)
      render json: @subject
    else
      render json: @subject.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1/subjects/1
  def destroy
    @subject.destroy
  end

  private
    def set_user
      @user = User.find(params[:user_id])
    end

    def set_subject
      @subject = @user.subjects.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def subject_params
      params.permit(:name, :teacher, :color, :user_id)
    end
end
