class ObservationsController < ApplicationController
  before_action :find_observation, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @observations = Observation.all.order("created_at ASC")
  end

  def new
    @observation = current_user.observations.build
  end

  def create
    @observation = current_user.observations.build(observation_params)

    if @observation.save
      redirect_to @observation, notice: "Nueva observación creado correctamente"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @observation.update(project_params)
      redirect_to @observation, notice: "observación actualizado correctamente"
    else
      render 'edit'
    end
  end

  def show
  end

  private

  def observation_params
    params.require(:project).permit!
  end

  def find_observation
    @observation = Observation.find(params[:id])
  end
end
