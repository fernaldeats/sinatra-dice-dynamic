require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:zebra/:ox") do

  @number_of_dice = params.fetch("zebra").to_i
  @number_of_sides = params.fetch("ox").to_i
  
  @rolls = []

  @number_of_dice.times do
  die = rand(1..@number_of_sides)

  @rolls.push(die)
end

erb(:flexible)
end
