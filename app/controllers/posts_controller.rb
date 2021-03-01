class PostsController < ApplicationController
    def index
        # render json: post.to_json(except: [:created_at, :updated_at,:author_id], include: {author: {only: [:name]}})
        post = Post.all 
        # render json: post
        render json: Post.arr_to_json
        #json behind the scenes turns your hash into a string
        #http can only send/receive/read information in STRING format

        #"{

        #}"
    end 

    #"/posts/:id"
    def show
        post = Post.find(params[:id])
        render json: post.instance_to_json 
    end 

    def create
        post = Post.new(post_params)
        author = Author.find_or_create_by(name: params[:author])
        post.author_id =  author.id
        if post.save
            render json: post.instance_to_json
        else 
            render json: post.errors, status: :unprocessable_entity
        end
    end 

    def update
        post = Post.find_by(id:params[:id])
        post.update(likes:params[:likes])
        if post.save
            render json: post.instance_to_json
        else 
            render json: post.errors, status: :unprocessable_entity
        end
    end 


    private 

    def post_params
        params.require(:post).permit(:title,:content,:author_id)
    end 
end
