class PokemonsController < ApplicationController

  def capture
    @pokemon = Pokemon.find params[:id]
    @pokemon.trainer_id = current_trainer.id
    @pokemon.save

    redirect_to "/"
  end

  def damage
    @pokemon = Pokemon.find params[:id]
    @pokemon.health = @pokemon.health - 10
    @pokemon.save
    if @pokemon.health <= 0
      @pokemon.destroy
    end
    redirect_to trainer_path(current_trainer)
  end

  def create
    @pokemon = Pokemon.create(name: params[:name], health: 100, trainer_id: current_trainer.id, level: 1)
    if @pokemon.save
      redirect_to trainer_path(current_trainer)
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
    end
  end
end
