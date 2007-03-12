% Clear all variables and figures.
  clear all;
  close all;

% Generate elliptical cloud of data-poitns.
  x(1,:) = randn(1,100);
  x(2,:) = randn(1,100)*3;

% Rotate the cloud for demonstration.
  [p(1,:),p(2,:)] = cart2pol(x(1,:),x(2,:));
  p(1,:) = p(1,:)-pi/3;
  [x(1,:),x(2,:)] = pol2cart(p(1,:),p(2,:));

% Plot data.
  scatter(x(1,:),x(2,:));
  axis equal;
  drawnow;
  pause;

% Calculate PC's.
  [pc, latent, explained] = pcacov(cov(x'));

% Draw PC's on top of data.
  hold on;
  plot([-4 4]*pc(1,1),[-4 4]*pc(2,1),'r-');
  plot([-2 2]*pc(1,2),[-2 2]*pc(2,2),'g-');
  pause;

% Rotate the data to the PC's
  y = (x'*pc)';

% Plot data.
  figure;
  scatter(y(1,:),y(2,:));
  axis equal;
  drawnow;
  pause;

% Calculate PC's, to demonstrate they now lie on the axes.
  [pc2, latent, explained] = pcacov(cov(y'));

% Draw PC's on top of data.
  hold on;
  plot([-4 4]*pc2(1,1),[-4 4]*pc2(2,1),'r-');
  plot([-2 2]*pc2(1,2),[-2 2]*pc2(2,2),'g-');
  pause;

% Set the second component of y to zero, reducing the dimensionality to one.
  y(2,:) = 0;

% Transform back to the original data.
  x = (y'*inv(pc))';

% Plot data.
  figure;
  scatter(x(1,:),x(2,:));
  axis equal;
  drawnow;
  pause;

% Tidy up.
  close all;