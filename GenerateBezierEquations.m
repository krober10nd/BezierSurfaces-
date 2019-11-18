function [Bezx,Bezy,Bezz,D]=GenerateBezierEquations(n) 
%% Symbolically writes analytical functions that represent Bezier surfaces 
%
%  Outputed functions (Bezx, Bezy, Bezz) take (u,v) in [0,1]x[0,1]
%  and return x,y,z in R^3 that fit control points labeled point_x_n_m
%  where x is either x,y, or z and nxm is the order of the Bezier curves.
%  
%  INPUTS: 
%    n: Desired order of Bezier surface (note n=m)
%
%  OUTPUTS: 
%    Bezx(u,v): returns x-coordinate of Bezier surface. 
%    Bezy(u,v): returns y-coordinate of Bezier surface. 
%    Bezz(u,v): returns z-coordinate of Bezier surface. 
%    D(u,v):    returns the squared Euclidean distance to the 
%               Bezier surface from query point qp = [qp_x,qp_y,qp_z]
%
%  NOTES: 
%  --The outputted functions Bezx, Bezy, and Bezz are equations 
%    that approximate arbitrary n*m control points defined in R^3.
%
%  --The ouptted function called D(u,v) returns the Euclidean distance from 
%    the surface to a control point in R^3. 
%    
%    REQUIREMENTS: Symbolical toolbox to generate equations. Note that the 
%    equations can be easily copied to functions later on that obviously do
%    not require the symbolical toolbox. 
%%
m=n ; % 

syms u v qp_x qp_y qp_z 

point_x = sym('point_x',[n+1]);
point_y = sym('point_y',[n+1]);
point_z = sym('point_z',[n+1]);

count = 1 ;
for i = 0 : n
    for j = 0 : m
        
        Bezx(count) = factorial(n)/(factorial(i)*factorial(n-i)) * (1-u).^(n-i) * u.^i  * ...
            factorial(n)/(factorial(j)*factorial(n-j)) * (1-v).^(n-j) * v.^j  * ...
            point_x(i+1,j+1)  ;
        
        Bezy(count) = factorial(n)/(factorial(i)*factorial(n-i)) * (1-u).^(n-i) * u.^i  * ...
            factorial(n)/(factorial(j)*factorial(n-j)) * (1-v).^(n-j) * v.^j  * ...
            point_y(i+1,j+1)  ;
        
        Bezz(count) = factorial(n)/(factorial(i)*factorial(n-i)) * (1-u).^(n-i) * u.^i  * ...
            factorial(n)/(factorial(j)*factorial(n-j)) * (1-v).^(n-j) * v.^j  * ...
            point_z(i+1,j+1)  ;
        
        count = count + 1;
    end
end

Bezx = simplify(sum(Bezx)) ;

Bezy = simplify(sum(Bezy)) ;

Bezz = simplify(sum(Bezz)) ; 

syms D(u,v) 
D(u,v) = ( Bezx - qp_x).^2 + (Bezy - qp_y).^2 + (Bezz - qp_z).^2 ; 
end 
