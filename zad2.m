function [ n,m1,m2 ] = zad2(  )
iter = 10;
n = zeros(10,16);
m1 = zeros(10,16);
m2 = zeros(10,16);
ix = 1;
iy = 2;
for j = -4:3
        [x,y ]= newton(j,10);
        
    n(:,ix) = x;
    n(:,iy) = y;
    ix = ix+2;
    iy = iy+2;
end
ix = 1;
    iy = 2;
for j = -4:3
       
    [x,y ]= mm2(j,10);
    m2(:,ix) = x;
    m2(:,iy) = y;
    ix = ix+2;
    iy = iy+2;

end
ix = 1;
    iy = 2;
for j = -4:3
     
        [m1(:,ix), m1(:,iy) ]= mm1(j-1,j+1,j,10);
        ix = ix+2;
    iy = iy+2;
end

end

