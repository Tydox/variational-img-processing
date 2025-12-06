function u=diffusion_pm(f,K,Iter,dt)
% Perona-Malik nonlinear diffusion process
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Course 048926: Variational methods in image processing 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% u=diffusion_pm(f,K,Iter,dt)
% parameters:
% f      = input image (2D gray-level)
% K      = threshold parameter
% Iter   = number of iterations 
% dt     = time step 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%% Write your code below

u = f;  % Erase this (do nothing filter, for debug).

%%
