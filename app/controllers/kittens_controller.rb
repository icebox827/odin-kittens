class KittensController < ApplicationController
  def index
    @kitten = Kitten.all
  end
end
