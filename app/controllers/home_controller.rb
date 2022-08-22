class HomeController < ApplicationController
  before_action :commom_content, :only => [:index, :team]


  def commom_content
    @hero_name = Faker::Superhero.name
    @hero_power = Faker::Superhero.power
    @hero_corp_power = Faker::Company.bs
    @hero_corp_title = Faker::Job.title
    @hero_corp_title = @hero_corp_title.titleize
    
    @rand_avatar = rand(1..1000)
    @rand_set = "set" + rand(1..4).to_s
    @rand_bg = "bg" + rand(1..2).to_s
    
    @avatar = Faker::Avatar.image(slug: @rand_avatar , size: "300x300", format: "png", set: @rand_set, bgset: @rand_bg)
  end

  def index
  end

  def team
  end

end
