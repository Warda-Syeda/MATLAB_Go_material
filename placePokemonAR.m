function placePokemonAR(imgName)

% Open webacam connection
cam = webcam(1);

% Create new figure and axis
figure; 
arAxis = axes();

% take initial snapshot from camera and dispaly pokemon
img = snapshot(cam);
imshow(img); hold on
pokemonAxis = placePokemon(imgName,1);

% take webcam snapshots in a loop and randomly move pokemon
directions = {'up','down','left','right'};

for i = 1:100
    
    img = snapshot(cam);
    axes(arAxis)
    imshow(img); 
    newDirection = randi(4);
    movePokemon(pokemonAxis, directions{newDirection});  
end