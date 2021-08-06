class TagsController < ApplicationController
    def add
      post = Post.find params[:id]
      tags = Tag.where(name: params[:tag])

        if tags.count == 0
            tag = Tag.new
            tag.name = params[:tag]
        else
            tag = tags.first
        end

        if !post.tags.include?(tag)
            post.tags << tag
        end
        
        if tag.save
            redirect_to tag_post_path(post)
        else
            render "add", alert: "Tag darf nicht leer sein oder gleichen Namen haben"
        end
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
