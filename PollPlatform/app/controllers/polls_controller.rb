class PollsController < ApplicationController
  before_action :set_poll, only: [:show, :update, :destroy]

  # GET /polls
  def index
    @polls = Poll.all

    render json: @polls
  end

  # GET /polls/1
  def show
    render json: @poll
  end

  # POST /polls
  def create
    @poll = Poll.new(poll_params)

    if @poll.save
      render json: @poll, status: :created, location: @poll
    else
      render json: @poll.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /polls/1
  def update
    if @poll.update(poll_params)
      render json: @poll
    else
      render json: @poll.errors, status: :unprocessable_entity
    end
  end

  # DELETE /polls/1
  def destroy
    @poll.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poll
      @poll = Poll.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def poll_params
      params.require(:poll).permit(:name, :email, :sexo, :edad, :question1, :question2,:question3, 
      :question4,
      :question5,
      :question6,
      :question7,
      :question8,
      :question9,
      :question10,
      :question11,
      :question12,
      :question13,
      :question14,
      :question15,
      :question16,
      :question17,
      :question18,
      :question19,
      :question20,
      :question21,
      :question22,
      :question23,
      :question24,
      :question25,
      :question26,
      :question27,
      :question28,
      :question29,
      :question30,
      :question31,
      :question32,
      :question33,
      :question34,
      :question35,
      :question36,
      :question37,
      :question38
      )
    end
end
