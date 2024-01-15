class PrototypesController < ApplicationController
  before_action :set_prototype, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]

  def index
  end

  def new
  end

  def create
  end
  

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
