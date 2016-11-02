class PokemonsController < ApplicationController
  def capture
    @pokemon = Pokemon.find(params[:id])

    @pokemon.trainer_id = current_trainer.id

    @pokemon.save

    redirect_to "/"

  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.create(
        name: params["pokemon"]["name"],
        :level => 1,
        :health => 100,
        :trainer => current_trainer)
    if @pokemon.valid?
      redirect_to trainer_path(id: current_trainer.id)
    else
      redirect_to '/pokemons/new'
      flash[:error] = @pokemon.errors.full_messages.to_sentence
    end
  end

end
