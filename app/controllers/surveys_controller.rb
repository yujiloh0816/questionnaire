class SurveysController < ApplicationController

  before_action :set_survey, only: [:show, :edit, :update, :destroy]

  def index
    @surveys = Survey.all
  end

  def show
  end

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      redirect_to @survey, notice: "Successfully created survey."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @survey.update_attributes(survey_params)
      redirect_to @survey, notice: "Successfully updated survey."
    else
      render :edit
    end
  end

  def destroy
    @survey.destroy
    redirect_to surveys_url, notice: "Successfully destroyed survey."
  end

  private

  def set_survey
    @survey = Survey.find(params[:id])
  end

  def survey_params
    params.require(:survey).permit(
      :name,
      questions_attributes: [
        :id,
        :content,
        :_destroy,
        answers_attributes: [
          :id,
          :content,
          :_destroy
        ]
      ]
    )
  end

end
