function [ dist ] = edist( x,y )

dist = (sqrt(sum(((y-x).^2))'))';

end

