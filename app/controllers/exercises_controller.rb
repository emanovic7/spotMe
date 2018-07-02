class ExercisesController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = Exercise.new
  end


  def create
    @exercise = Exercise.new(exercise_params)
      if @exercise.save
        session[:exercise_id] = @exercise.id
        redirect_to exercise_path
      else
        render :new
      end
  end

  def edit

  end

  def update
    if @exercise.update(exercise_params)
      redirect_to exercise_path
    else
      render :edit
    end
  end

  def destroy
    @exercise.delete
  end



private

  def exercise_params
    params.require(:exercise).permit(
    :name,
    :description,
    :sets,
    :reps,
    :rest
    )
  end

end
