class CommentsController < ApplicationController
  before_action :set_post, only: %i[ show edit destroy update create ]
  before_action :set_comment, only: %i[ destroy ]

  # GET /comments or /comments.json
 
  # GET /comments/1 or /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments or /comments.json
  def create
    @post.comments.create! comment_params
    redirect_to @post
  end

  
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to comment_url(@comment), notice: "Comment was successfully updated." }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    puts "destroyed dfserewrewr"
    @comment.destroy!

    respond_to do |format|
      format.html { redirect_to post_path(@post.id), notice: "Comment was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  private
  def set_post
    @post = Post.find(params[:post_id])
  end

  # PATCH/PUT /comments/1 or /comments/1.json

  # DELETE /comments/1 or /comments/1.json

  private
    # Use callbacks to share common setup or constraints between actions.

  def comment_params
    params.required(:comment).permit(:content, :user_id)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end
end
