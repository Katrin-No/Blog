class TagsController < ApplicationController
    def add
      post = Post.find params[:id]
      tags = Tag.where(name: params[:tag])
        if tags.count == 0
            tag = Tag.new
            tag.name = params[:tag]
            tag.save
        else
            tag = tags.first
        end
        if !post.tags.include?(tag)
            post.tags << tag
        end
        redirect_to tag_post_path(post)
    end

    def remove
        post = Post.find params[:id]
        tag = Tag.find params[:tag_id]
        post.tags.delete(tag)
        redirect_to tag_post_path(post)
    end

    def show
        @tag = Tag.find params[:id]
    end

  end
  