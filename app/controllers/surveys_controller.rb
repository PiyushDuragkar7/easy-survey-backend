class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :update]

  def create
    @survey = Survey.create!(survey_params)
    render json: {survey: @survey, message: "Successfully created"}
  end

  def show
    render json: {survey: @survey}
  end

  def update
    @survey.update(survey_params)
    render json: { message: "Survey successfully updated" }
  end

  private

  def set_survey
    @survey = Survey.find(params[:id])
  end

  def survey_params
    params.require(:survey).permit(:name, :description, components: [:type, :x, :y, :content])
  end
end
