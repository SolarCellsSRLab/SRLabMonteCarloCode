clear
a = figure(1);
file = input('Enter csv file name: ', 's');
Picture = csvread(file);
x = Picture(:,1);
y = Picture(:,2);
z = Picture(:,3);
c = Picture(:,4);
colormap([0  0  1; 1  0  0])
scatter3(x,y,z,10,c,'filled')
axis equal