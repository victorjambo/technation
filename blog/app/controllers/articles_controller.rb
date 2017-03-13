class ArticlesController < ApplicationController
	def new
		@article = Article.new
	end

	def index
		@articles = Article.all
	end

	def edit
		@article = find_params
	end

	def show
		@article =  find_params
	end

	def create
		@article = Article.new(article_params)

		if @article.save
			redirect_to @article
		else
			render 'new'
		end
	end

	def update
		@article = find_params

		if @article.update(article_params)
			redirect_to @article
		else
			render 'edit'
		end
	end

	private
	def article_params
		params.require(:article).permit(:title, :text)
	end
	def find_params
		Article.find(params[:id])
	end
end
