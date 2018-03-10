class FeatureFlagsController < ApplicationController
  def index
    @flags = FeatureFlag.all.order('created_at DESC')
  end

  def new
    @flag = FeatureFlag.new  
  end

  def create
    @flag = FeatureFlag.create(flag_params)
    if @flag.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @flag = FeatureFlag.find(params[:id])
  end

  def update
  	@flag = FeatureFlag.find(params[:id])
  	@flag.update(flag_params)
  	if @flag.valid?
    	redirect_to root_path
  	else
    	render :edit, status: :unprocessable_entity
  	end
  end

  def destroy
  	@post = Post.find(params[:id])
  	@post.destroy
  	redirect_to root_path
	end

  private

  def flag_params
  	params.require(:feature_flag).permit(:name, :value)
	end
end
