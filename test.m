clearvars; close all; clc;

cp{1,1} = [11 54 3] ;
cp{1,2} = [4 2 7] ;
cp{1,3} = [25 67 2];

cp{2,1} = [65 3 89];
cp{2,2} = [8 4 2];
cp{2,3} = [5.3 11 0];

cp{3,1} = [32 4 6];
cp{3,2} = [7 3 2];
cp{3,3} = [45 22 4];

u=linspace(0,1,100);
v=u;
[ug,vg]=meshgrid(u,v);
t=delaunay(ug(:),vg(:));

tic
[OUT] = qbSurf(cp,ug(:),vg(:));
toc

qp = [20 30 50];

tic
d = qbDist(cp,ug(:),vg(:),qp(1),qp(2),qp(3)) ;
toc
figure; trisurf(t,OUT(:,1),OUT(:,2),OUT(:,3),sqrt(d));
shading flat; camlight

hold on; plot3(qp(:,1),qp(:,2),qp(:,3),'ks');

jac=qbDistanceJacobian(cp,0.5,0.5,qp(1),qp(2),qp(3)) ;

hes=qbDistanceHessian(cp,0.5,0.5,qp(1),qp(2),qp(3))  ;

tol=1e-12;
pold=[1,1];
count = 0;
while 1
    
    ja = qbDistanceJacobian(cp,pold(1),pold(2),qp(1),qp(2),qp(3)) ;
    he = qbDistanceHessian(cp,pold(1),pold(2),qp(1),qp(2),qp(3))  ;
    
    pnew = pold - (ja/he);
    
    change = abs(pnew - pold) ;
    count = count + 1 ;
    disp(['ITER: ',num2str(count),' change is : ',num2str(change)]);
    
    % visualize movement
    [OUT] = qbSurf(cp,pnew(1),pnew(2));
    hold on; plot3(OUT(1),OUT(2),OUT(3),'ms');
    pause
    
    if(change < tol)
        break
    end
    
    pold = pnew;
    
end

% visualize movement
[OUT] = qbSurf(cp,pnew(1),pnew(2));
hold on; plot3(OUT(1),OUT(2),OUT(3),'g*');


