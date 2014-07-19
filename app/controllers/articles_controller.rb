class ArticlesController < ApplicationController
    
    http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
    
    def index
        @articles = Article.all
    end
    
    # snipped for brevity
    def new
    end
    
    def create
        @article = Article.new(params[:article])
        
        @article.save
        redirect_to @article
    end
    
    private
    def article_params
        params.require(:article).permit(:title, :text)
    end
    
    def show
        @article = Article.find(params[:id])
    end
    
    def index
        @articles = Article.all
    end
    
    def edit
        @article = Article.find(params[:id])
    end
    
    def update
        @article = Article.find(params[:id])
        
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
    
    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        
        redirect_to articles_path
    end
end

    private
    def article_params
    params.require(:article).permit(:title, :text)
end