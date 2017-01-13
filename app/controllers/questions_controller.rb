class QuestionsController < ApplicationController
  def index
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new
    @question.title = params.require(:question).permit(:title)
    @question.body = params.require(:question).permit(:body)
    @question.resolved = params.require(:question).permit(:resolved)

    if @question.save
      flash[:notice] = "Question was saved."
      redirect_to @question
    else
      flash.now[:alert] = "There was an error saving the question. Please try again."
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    def update
      @question = Question.find(params[:id])
      @question.title = params.require(:question).permit(:title)
      @question.body = params.require(:question).permit(:body)
      @question.resolved = params.require(:question).permit(:resolved)

      if @question.save
        flash[:notice] = "Your question was updated."
        redirect_to @question
      else
        flash.now[:alert] = "There was an error saving the question. Please try again."
        render :edit
      end
    end
  end

  def destroy
  end

end
