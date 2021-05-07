class KittensController < ApplicationController
  def index
    @kitten = kitten.all
  end
end
