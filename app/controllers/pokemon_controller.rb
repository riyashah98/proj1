class PokemonController <ApplicationController

	def capture 
		@pokemon = Pokemon.find(params[:id])
		@pokemon.update(trainer_id: current_trainer.id)
		@pokemon.save
		redirect_to "/"
	end

	def damage 
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health = @pokemon.health - 10 
		if @pokemon.health <= 0
			@pokemon.destroy
		else 
			@pokemon.save
		end
		redirect_to trainer_path(@pokemon.trainer)
	end 
=begin
	def new
		@pokemon = Pokemon.new
	end
=end
	def create 
		@pokemon = Pokemon.new
		@pokemon.update(params.require(:pokemons).permit(:name, :ndex))
		@pokemon.health = 100
		@pokemon.level = 1 
		@pokemon.trainer = current_trainer
		if @pokemon.save
			redirect_to trainer_path(current_trainer)
		else 
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to new_pokemon_path
		end
	end

end
