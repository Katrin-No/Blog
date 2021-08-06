class TagsController < ApplicationController
  def add
    @post = Post.find params[:id]
    tag = Tag.find_or_create_by(name: params[:tag])
    
    if tag.valid?
      @post.add_tag(tag)
      redirect_to tag_post_path(@post)
    else
      redirect_to tag_post_path(@post), alert: "Tag darf nicht leer sein oder gleichen Namen haben"
    end
  end

  def remove
    post = Post.find params[:id]
    tag = Tag.find params[:tag_id]
    if post.tags.delete(tag)
      redirect_to tag_post_path(post), notice: "Tag wurde gelöscht"
    end
    
  end

  def show
    @tag = Tag.find params[:id]
  end
end
