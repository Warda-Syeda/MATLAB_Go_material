function movePokemon(pokemonAxis, direction)

pokemonPos = get(pokemonAxis,'position');
if (pokemonPos(1)>= 0.13 &&  pokemonPos(1)<= 0.87 && pokemonPos(2)>= 0.11 && pokemonPos(2)<= 0.89)
    switch direction
        case 'up'
            pokemonPos(2) = pokemonPos(2) + 0.05;
            set(pokemonAxis, 'position',pokemonPos);
        case 'down'
            pokemonPos(2) = pokemonPos(2) - 0.05;
            set(pokemonAxis, 'position',pokemonPos);
        case 'left'
            pokemonPos(1) = pokemonPos(1) - 0.05;
            set(pokemonAxis, 'position',pokemonPos);
        case 'right'
            pokemonPos(1) = pokemonPos(1) + 0.05;
            set(pokemonAxis, 'position',pokemonPos);
    end
else
    pokemonPos(1:2) = 0.5;
    set(pokemonAxis,'position',pokemonPos);
end
axes(pokemonAxis)