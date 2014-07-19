class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        redirect_to article_path(@article)
    end
    
    private
    def comment_params
        params.require(:comment).permit(:commenter, :body)
    end
    
    <p>
      <strong>Commenter:</strong>
      <%= comment.commenter %>
    </p>
    
    <p>
      <strong>Comment:</strong>
      <%= comment.body %>
    </p>
    
    <p>
      <%= link_to 'Destroy Comment', [comment.article, comment],
                   method: :delete,
                   data: { confirm: 'Are you sure?' } %>
    </p>
    
    class CommentsController < ApplicationController
        def create
            @article = Article.find(params[:article_id])
            @comment = @article.comments.create(comment_params)
            redirect_to article_path(@article)
        end
        
        def destroy
            @article = Article.find(params[:article_id])
            @comment = @article.comments.find(params[:id])
            @comment.destroy
            redirect_to article_path(@article)
        end
        
        private
        def comment_params
            params.require(:comment).permit(:commenter, :body)
        end
    end
    
    class CommentsController < ApplicationController
        
        http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
        
        def create
            @article = Article.find(params[:article_id])
            ...
        end
        
        # snipped for brevity


end