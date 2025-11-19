class HomesController < ApplicationController
  allow_unauthenticated_access only: %i[ about ]
  def top
  end

  def about

  end
end
