class PostsController < ApplicationController

  def index
    if params[:keywords].present?
      @keywords = params[:keywords]
      lesson_search_term = LessonSearchTerm.new(@keywords)
      @posts = Post.where(
        lesson_search_term.where_clause,
        lesson_search_term.where_args).
        order(lesson_search_term.order).
        paginate(page: params[:page], per_page: 7)
    else
      @posts = Post.all.paginate(page: params[:page], per_page: 7)
    end

    respond_to do |format|
      # if the response fomat is html, redirect as usual
    format.html { }

    # if the response format is JSON, do something else...
    format.json {
        render json: @posts
     }

    #format.js { }
end

  end

  # ##########################################

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create

    @post = Post.new
    @post.title = params[:post][:title]
    @post.model_tag = params[:post][:model_tag]
    @post.view_tag = params[:post][:veiw_tag]
    @post.controller_tag = params[:post][:controller_tag]
    @post.description = params[:post][:description]
    @post.body = params[:post][:body]
    @post.element = params[:post][:element]


    if @post.save

      flash[:notice] = "Post was saved."
      redirect_to @post
    else

      flash.now[:alert] = "There was an error saving the post. Please try again."
      render :new
    end
  end

  def edit
     @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.title = params[:post][:title]
    @post.model_tag = params[:post][:model_tag]
    @post.view_tag = params[:post][:view_tag]
    @post.controller_tag = params[:post][:controller_tag]
    @post.description = params[:post][:description]
    @post.body = params[:post][:body]
    @post.element = params[:post][:element]



    if @post.save
      flash[:notice] = "Post was updated."
      redirect_to @post
    else
      flash.now[:alert] = "There was an error saving the post. Please try again."
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])

    if @post.destroy
      flash[:notice] = "\"#{@post.title}\" was deleted successfully."
      redirect_to posts_path
    else
      flash.now[:alert] = "There was an error deleting the post."
      render :show
    end
  end
end
