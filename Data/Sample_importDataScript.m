Import the data
[~, ~, raw] = xlsread('/Users/wsyeda/Documents/MATLAB/MATLAB_GO/Data/Pokemon_CP.xlsx','Form Responses 1');
raw = raw(2:end,:);
raw(cellfun(@(x) ~isempty(x) && isnumeric(x) && isnan(x),raw)) = {''};
cellVectors = raw(:,1);
raw = raw(:,[2,3,4,5]);

%Replace non-numeric cells with NaN
R = cellfun(@(x) ~isnumeric(x) && ~islogical(x),raw); % Find non-numeric cells
raw(R) = {NaN}; % Replace non-numeric cells

%Create output variable
data = reshape([raw{:}],size(raw));

% Allocate imported array to column variable names
Name = cellVectors(:,1);
Pokedex_Num = data(:,1);
CP_before = data(:,2);
CP_after = data(:,3);
Level = data(:,4);

% Clear temporary variables
clearvars data raw cellVectors R;