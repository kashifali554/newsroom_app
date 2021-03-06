class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :current_user, only: [:edit, :update, :destroy]

  def search
    @articles = if params[:q]
      Article.where("category Like '#{params[:q].to_s}'")
    else
      @article = Article.all
    end
  end

  def manage
    @articles = Article.all
  end

  def latest
    @articles = Article.all
  end

  def us
    @articles = Article.all
  end

  def politics
    @articles = Article.all
  end

  def business
    @articles = Article.all
  end

  def sports
    @articles = Article.all
  end

  def opinion
    @articles = Article.all
  end

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    # @comment = Comment.new
  end

  def new
    @article = current_user.articles.build

    if can? :create, @article
    end

    if cannot? :create, @article
      redirect_to "/articles"
    end

  end

  def edit
    if can? :update, @article
    end
    if cannot? :update, @article
      redirect_to "/articles"
    end
  end

  def create
    @article = current_user.articles.build(article_params)
    # @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to "/articles", notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    # if current_user != @article.user
    #   redirect_to "/articles"
    # end
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_path, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:headline, :img, :text, :category)
    end

end
