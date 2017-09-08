class ResponsesController < ApplicationController
  before_action :set_response, only: [:show, :edit, :update, :destroy]

  # GET /responses
  # GET /responses.json
  def index
    @responses = Response.all
  end

  # GET /responses/1
  # GET /responses/1.json
  def show
  end

  # GET /responses/new
  def new
    @response = Response.new
    @question = Question.all
    @answers = Answer.all
  end

  # GET /responses/1/edit
  def edit
  end

  # POST /responses
  # POST /responses.json
  def create


    @response = Response.new(respondent_id: params["respondent_id"], question_id: params["response"]["question_id"], answer_hash: nil, one_hash: nil, two_hash: nil,three_hash: nil, )


    i = 32
    answer_hash = Hash.new
    41.times do
      answer_hash[i.to_s] = params["question_id " + i.to_s]
      i += 1
    end

    one_hash = answer_hash.select {|k,v|v == "1"}
    two_hash = answer_hash.select {|k,v|v == "2"}
    three_hash = answer_hash.select {|k,v|v == "3"}
    @response.update(answer_hash: answer_hash, one_hash: one_hash, two_hash: two_hash, three_hash: three_hash)
    @response.save
    binding.pry

  end

  # PATCH/PUT /responses/1
  # PATCH/PUT /responses/1.json
  def update
    respond_to do |format|
      if @response.update(response_params)
        format.html { redirect_to @response, notice: 'Response was successfully updated.' }
        format.json { render :show, status: :ok, location: @response }
      else
        format.html { render :edit }
        format.json { render json: @response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /responses/1
  # DELETE /responses/1.json
  def destroy
    @response.destroy
    respond_to do |format|
      format.html { redirect_to responses_url, notice: 'Response was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_response
      @response = Response.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def response_params
      params.fetch(:response).permit(:section_number, :user_selection, :user_score, :question_id, :user_selection, :respondent_id, :answer_hash)
    end

end
