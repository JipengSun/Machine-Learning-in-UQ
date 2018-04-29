Z = reshape(errors,[30,30]);
surf([10:10:300],[10:10:300],Z);
xlabel('Perplexity');
ylabel('Iterations');
zlabel('Cost');
title('3D Plot with perplexity, iterations, and cost');