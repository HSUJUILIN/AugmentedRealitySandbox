load 521.mat
depthDevice = imaq.VideoDevice('kinect',2)
n = 200;
while n > 1
    n = n-1;
    depthImage =  step(depthDevice);
    cutimage = depthImage(57:347,66:446);
    recutimage = imresize(cutimage,[150 200]);
    recutimage(recutimage <= 850) = 850; 
    recutimage(recutimage >= 1100) = 1100; 
    contourf(recutimage,10); 
    caxis([850 1050]);
    colormap(mycolor);
end
release(depthDevice);