class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update, :destroy]


    def index
      @workouts = Workout.all
    end

    def new
      @workout = Workout.new
    end

    def create
      @workout = Workout.new(workout_params)
        if @workout.save
          #session[:workout_id] = @workout.id
          redirect_to workout_path(@workout)
        else
          render :new
        end
    end

    def edit

    end

    def update
      if @workout.update(workout_params)
         redirect_to @workout
       else
         render :edit
       end
    end

    def destroy
      @workout.delete
    end



    private
      def workout_params
        params.require(:workout).permit(
        :name,
        :body_part,
        :description
        )
      end

      def set_workout
        @workout = Workout.find(params[:id])
      end


end
