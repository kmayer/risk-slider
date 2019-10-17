class PagesController < ApplicationController
  def root
    @hello_world_props = { name: "Stranger" }
  end
end
