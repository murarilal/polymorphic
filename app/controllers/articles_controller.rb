class ArticlesController < ApplicationController
  
  def index
  end
  	
  def new
  	@article = Article.new
  end

  def create
    @article = Article.new(params.require(:article).permit(:name, :content, :author_name))
    if @article.save
      redirect_to @article
    else
      render 'new'
    end    
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
