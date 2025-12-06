%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Exercise 1: Diffusion Processes                         %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Course 048926: Variational methods in image processing  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f_parrot = imread('parrot.png');
f_girl = imread('sun_girl.png');

f_parrot = double(rgb2gray(f_parrot));
f_girl = double(f_girl);

figure(1); imshow(f_parrot,[0,255])
title('Original parrot image');
figure(2); imshow(f_girl,[0,255])
title('Original girl image');

% Example
% Add noise
N_std = 10; % noise standard deviation
noise = randn(size(f_parrot))*N_std;
f = f_parrot + noise;
figure(3); imshow(f,[0,255])
title('Parrot with noise');
% Gaussian convolution
H_sz = 7; H_sigma = 1;
H = fspecial('gaussian',H_sz,H_sigma);
u_gaussian = imfilter(f,H,'symmetric');
figure(4); imshow(u_gaussian,[0,255])
title('Noisy parrot after Gaussian smoothing');
v_gaussian = f-u_gaussian;  % difference image
figure(5); imshow(v_gaussian,[])
title('Noisy parrot, Gaussian smoothing, difference image');

[PSNR_0,MSE_0] = psnr_mse_maxerr(f_parrot,f)
[PSNR_gaussian,MSE_gaussian] = psnr_mse_maxerr(f_parrot,u_gaussian)
%%%% Write your code below

%% Q1 %%


%% Q2 %%


%% Q3 %%

