function pokemonAxis = placePokemon(nameList, ARFlag)

if ~ARFlag
    clf
    map = imread('./Images/Map2.png');
    imshow(map)
    hold on
end

ax = 0.11;  bx = 0.8;
ay = 0.13; by = 0.8;


for imgNumber = nameList
    imgPth = sprintf('./Images/Pokemons/%.3d.jpg',imgNumber);
    
    pokemon = imread(imgPth);
    pokemonBW = pokemon(:,:,1) ~= 255;
    pokemonBW = bwareaopen(pokemonBW,500);
    pokemonBW = imclose(pokemonBW,strel('disk',10));
    
    rx = (bx-ax)*rand + ax;
    ry = (by-ay)*rand + ay;
    axisPosition = [rx ry 0.15 0.15];
    pokemonAxis = axes('position',axisPosition );
    
    pokemonH = imshow(pokemon)
    set(pokemonH, 'AlphaData', pokemonBW);
    set(gcf,'UserData',pokemonAxis)
end
