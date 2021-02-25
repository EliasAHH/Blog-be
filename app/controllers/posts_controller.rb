class PostsController < ApplicationController
    def index
        # render json: post.to_json(except: [:created_at, :updated_at,:author_id], include: {author: {only: [:name]}})
        render json: Post.arr_to_json
        #json behind the scenes turns your hash into a string
        #http can only send/receive/read information in STRING format

        #"{

        #}"
    end 

    def show
        post = Post.find(params[:id])
        render json: post.instance_to_json 
    end 

    def create
        post = Post.new(post_params)
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
