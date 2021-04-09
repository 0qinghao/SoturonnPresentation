% Set the video information
videoSequence = 'visit.yuv';
width = 480;
height = 832;
nFrame = 52;

% Read the video sequence
[Y, U, V] = yuvRead(videoSequence, width, height, nFrame);
U_ex = uint8(height, width, nFrame);
U_ex(1:2:height,1:2:width,:) = U;
U_ex(2:2:height,1:2:width,:) = U;
U_ex(1:2:height,2:2:width,:) = U;
U_ex(2:2:height,2:2:width,:) = U;
V_ex = uint8(height, width, nFrame);
V_ex(1:2:height,1:2:width,:) = V;
V_ex(2:2:height,1:2:width,:) = V;
V_ex(1:2:height,2:2:width,:) = V;
V_ex(2:2:height,2:2:width,:) = V;

YUV = uint8(height, width, 3, nFrame);
YUV(:,:,1,:) = Y;
YUV(:,:,2,:) = U_ex;
YUV(:,:,3,:) = V_ex;
