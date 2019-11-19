function [OUT1,OUT2] = qbDistanceHessian(points,u,v,qp_x,qp_y,qp_z)
% compute Hessian of distance function at a point (u,v)

OUT1 = [                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  2.*(2.*points{2,3}(1).*u.*v.^2 - 2.*points{3,3}(1).*u.*v.^2 - points{1,1}(1).*(2.*u - 2).*(v - 1).^2 + points{2,1}(1).*(2.*u - 2).*(v - 1).^2 + 2.*points{2,1}(1).*u.*(v - 1).^2 - 2.*points{3,1}(1).*u.*(v - 1).^2 - points{1,3}(1).*v.^2.*(2.*u - 2) + points{2,3}(1).*v.^2.*(2.*u - 2) + 2.*points{1,2}(1).*v.*(2.*u - 2).*(v - 1) - 2.*points{2,2}(1).*v.*(2.*u - 2).*(v - 1) - 4.*points{2,2}(1).*u.*v.*(v - 1) + 4.*points{3,2}(1).*u.*v.*(v - 1)).^2 - 2.*(2.*points{1,1}(2).*(v - 1).^2 - 4.*points{2,1}(2).*(v - 1).^2 + 2.*points{3,1}(2).*(v - 1).^2 + 2.*points{1,3}(2).*v.^2 - 4.*points{2,3}(2).*v.^2 + 2.*points{3,3}(2).*v.^2 - 4.*points{1,2}(2).*v.*(v - 1) + 8.*points{2,2}(2).*v.*(v - 1) - 4.*points{3,2}(2).*v.*(v - 1)).*(qp_y - points{1,1}(2).*(u - 1).^2.*(v - 1).^2 - points{3,3}(2).*u.^2.*v.^2 - points{1,3}(2).*v.^2.*(u - 1).^2 - points{3,1}(2).*u.^2.*(v - 1).^2 + points{2,3}(2).*u.*v.^2.*(2.*u - 2) + 2.*points{1,2}(2).*v.*(u - 1).^2.*(v - 1) + points{2,1}(2).*u.*(2.*u - 2).*(v - 1).^2 + 2.*points{3,2}(2).*u.^2.*v.*(v - 1) - 2.*points{2,2}(2).*u.*v.*(2.*u - 2).*(v - 1)) - 2.*(2.*points{1,1}(3).*(v - 1).^2 - 4.*points{2,1}(3).*(v - 1).^2 + 2.*points{3,1}(3).*(v - 1).^2 + 2.*points{1,3}(3).*v.^2 - 4.*points{2,3}(3).*v.^2 + 2.*points{3,3}(3).*v.^2 - 4.*points{1,2}(3).*v.*(v - 1) + 8.*points{2,2}(3).*v.*(v - 1) - 4.*points{3,2}(3).*v.*(v - 1)).*(qp_z - points{1,1}(3).*(u - 1).^2.*(v - 1).^2 - points{3,3}(3).*u.^2.*v.^2 - points{1,3}(3).*v.^2.*(u - 1).^2 - points{3,1}(3).*u.^2.*(v - 1).^2 + points{2,3}(3).*u.*v.^2.*(2.*u - 2) + 2.*points{1,2}(3).*v.*(u - 1).^2.*(v - 1) + points{2,1}(3).*u.*(2.*u - 2).*(v - 1).^2 + 2.*points{3,2}(3).*u.^2.*v.*(v - 1) - 2.*points{2,2}(3).*u.*v.*(2.*u - 2).*(v - 1)) - 2.*(2.*points{1,1}(1).*(v - 1).^2 - 4.*points{2,1}(1).*(v - 1).^2 + 2.*points{3,1}(1).*(v - 1).^2 + 2.*points{1,3}(1).*v.^2 - 4.*points{2,3}(1).*v.^2 + 2.*points{3,3}(1).*v.^2 - 4.*points{1,2}(1).*v.*(v - 1) + 8.*points{2,2}(1).*v.*(v - 1) - 4.*points{3,2}(1).*v.*(v - 1)).*(qp_x - points{1,1}(1).*(u - 1).^2.*(v - 1).^2 - points{3,3}(1).*u.^2.*v.^2 - points{1,3}(1).*v.^2.*(u - 1).^2 - points{3,1}(1).*u.^2.*(v - 1).^2 + points{2,3}(1).*u.*v.^2.*(2.*u - 2) + 2.*points{1,2}(1).*v.*(u - 1).^2.*(v - 1) + points{2,1}(1).*u.*(2.*u - 2).*(v - 1).^2 + 2.*points{3,2}(1).*u.^2.*v.*(v - 1) - 2.*points{2,2}(1).*u.*v.*(2.*u - 2).*(v - 1)) + 2.*(2.*points{2,3}(2).*u.*v.^2 - 2.*points{3,3}(2).*u.*v.^2 - points{1,1}(2).*(2.*u - 2).*(v - 1).^2 + points{2,1}(2).*(2.*u - 2).*(v - 1).^2 + 2.*points{2,1}(2).*u.*(v - 1).^2 - 2.*points{3,1}(2).*u.*(v - 1).^2 - points{1,3}(2).*v.^2.*(2.*u - 2) + points{2,3}(2).*v.^2.*(2.*u - 2) + 2.*points{1,2}(2).*v.*(2.*u - 2).*(v - 1) - 2.*points{2,2}(2).*v.*(2.*u - 2).*(v - 1) - 4.*points{2,2}(2).*u.*v.*(v - 1) + 4.*points{3,2}(2).*u.*v.*(v - 1)).^2 + 2.*(2.*points{2,3}(3).*u.*v.^2 - 2.*points{3,3}(3).*u.*v.^2 - points{1,1}(3).*(2.*u - 2).*(v - 1).^2 + points{2,1}(3).*(2.*u - 2).*(v - 1).^2 + 2.*points{2,1}(3).*u.*(v - 1).^2 - 2.*points{3,1}(3).*u.*(v - 1).^2 - points{1,3}(3).*v.^2.*(2.*u - 2) + points{2,3}(3).*v.^2.*(2.*u - 2) + 2.*points{1,2}(3).*v.*(2.*u - 2).*(v - 1) - 2.*points{2,2}(3).*v.*(2.*u - 2).*(v - 1) - 4.*points{2,2}(3).*u.*v.*(v - 1) + 4.*points{3,2}(3).*u.*v.*(v - 1)).^2, 2.*(2.*points{2,3}(1).*u.*v.^2 - 2.*points{3,3}(1).*u.*v.^2 - points{1,1}(1).*(2.*u - 2).*(v - 1).^2 + points{2,1}(1).*(2.*u - 2).*(v - 1).^2 + 2.*points{2,1}(1).*u.*(v - 1).^2 - 2.*points{3,1}(1).*u.*(v - 1).^2 - points{1,3}(1).*v.^2.*(2.*u - 2) + points{2,3}(1).*v.^2.*(2.*u - 2) + 2.*points{1,2}(1).*v.*(2.*u - 2).*(v - 1) - 2.*points{2,2}(1).*v.*(2.*u - 2).*(v - 1) - 4.*points{2,2}(1).*u.*v.*(v - 1) + 4.*points{3,2}(1).*u.*v.*(v - 1)).*(2.*points{3,2}(1).*u.^2.*v - 2.*points{3,3}(1).*u.^2.*v - points{1,1}(1).*(2.*v - 2).*(u - 1).^2 + 2.*points{1,2}(1).*v.*(u - 1).^2 - 2.*points{1,3}(1).*v.*(u - 1).^2 + 2.*points{3,2}(1).*u.^2.*(v - 1) - points{3,1}(1).*u.^2.*(2.*v - 2) + 2.*points{1,2}(1).*(u - 1).^2.*(v - 1) - 2.*points{2,2}(1).*u.*(2.*u - 2).*(v - 1) + points{2,1}(1).*u.*(2.*u - 2).*(2.*v - 2) - 2.*points{2,2}(1).*u.*v.*(2.*u - 2) + 2.*points{2,3}(1).*u.*v.*(2.*u - 2)) - 2.*(qp_y - points{1,1}(2).*(u - 1).^2.*(v - 1).^2 - points{3,3}(2).*u.^2.*v.^2 - points{1,3}(2).*v.^2.*(u - 1).^2 - points{3,1}(2).*u.^2.*(v - 1).^2 + points{2,3}(2).*u.*v.^2.*(2.*u - 2) + 2.*points{1,2}(2).*v.*(u - 1).^2.*(v - 1) + points{2,1}(2).*u.*(2.*u - 2).*(v - 1).^2 + 2.*points{3,2}(2).*u.^2.*v.*(v - 1) - 2.*points{2,2}(2).*u.*v.*(2.*u - 2).*(v - 1)).*(4.*points{2,2}(2).*u.*(v - 1) - 4.*points{3,2}(2).*u.*(v - 1) + points{1,1}(2).*(2.*u - 2).*(2.*v - 2) - points{2,1}(2).*(2.*u - 2).*(2.*v - 2) - 2.*points{1,2}(2).*v.*(2.*u - 2) + 2.*points{1,3}(2).*v.*(2.*u - 2) - 2.*points{2,1}(2).*u.*(2.*v - 2) + 2.*points{2,2}(2).*v.*(2.*u - 2) - 2.*points{2,3}(2).*v.*(2.*u - 2) + 2.*points{3,1}(2).*u.*(2.*v - 2) + 4.*points{2,2}(2).*u.*v - 4.*points{2,3}(2).*u.*v - 4.*points{3,2}(2).*u.*v + 4.*points{3,3}(2).*u.*v - 2.*points{1,2}(2).*(2.*u - 2).*(v - 1) + 2.*points{2,2}(2).*(2.*u - 2).*(v - 1)) - 2.*(qp_z - points{1,1}(3).*(u - 1).^2.*(v - 1).^2 - points{3,3}(3).*u.^2.*v.^2 - points{1,3}(3).*v.^2.*(u - 1).^2 - points{3,1}(3).*u.^2.*(v - 1).^2 + points{2,3}(3).*u.*v.^2.*(2.*u - 2) + 2.*points{1,2}(3).*v.*(u - 1).^2.*(v - 1) + points{2,1}(3).*u.*(2.*u - 2).*(v - 1).^2 + 2.*points{3,2}(3).*u.^2.*v.*(v - 1) - 2.*points{2,2}(3).*u.*v.*(2.*u - 2).*(v - 1)).*(4.*points{2,2}(3).*u.*(v - 1) - 4.*points{3,2}(3).*u.*(v - 1) + points{1,1}(3).*(2.*u - 2).*(2.*v - 2) - points{2,1}(3).*(2.*u - 2).*(2.*v - 2) - 2.*points{1,2}(3).*v.*(2.*u - 2) + 2.*points{1,3}(3).*v.*(2.*u - 2) - 2.*points{2,1}(3).*u.*(2.*v - 2) + 2.*points{2,2}(3).*v.*(2.*u - 2) - 2.*points{2,3}(3).*v.*(2.*u - 2) + 2.*points{3,1}(3).*u.*(2.*v - 2) + 4.*points{2,2}(3).*u.*v - 4.*points{2,3}(3).*u.*v - 4.*points{3,2}(3).*u.*v + 4.*points{3,3}(3).*u.*v - 2.*points{1,2}(3).*(2.*u - 2).*(v - 1) + 2.*points{2,2}(3).*(2.*u - 2).*(v - 1)) - 2.*(qp_x - points{1,1}(1).*(u - 1).^2.*(v - 1).^2 - points{3,3}(1).*u.^2.*v.^2 - points{1,3}(1).*v.^2.*(u - 1).^2 - points{3,1}(1).*u.^2.*(v - 1).^2 + points{2,3}(1).*u.*v.^2.*(2.*u - 2) + 2.*points{1,2}(1).*v.*(u - 1).^2.*(v - 1) + points{2,1}(1).*u.*(2.*u - 2).*(v - 1).^2 + 2.*points{3,2}(1).*u.^2.*v.*(v - 1) - 2.*points{2,2}(1).*u.*v.*(2.*u - 2).*(v - 1)).*(4.*points{2,2}(1).*u.*(v - 1) - 4.*points{3,2}(1).*u.*(v - 1) + points{1,1}(1).*(2.*u - 2).*(2.*v - 2) - points{2,1}(1).*(2.*u - 2).*(2.*v - 2) - 2.*points{1,2}(1).*v.*(2.*u - 2) + 2.*points{1,3}(1).*v.*(2.*u - 2) - 2.*points{2,1}(1).*u.*(2.*v - 2) + 2.*points{2,2}(1).*v.*(2.*u - 2) - 2.*points{2,3}(1).*v.*(2.*u - 2) + 2.*points{3,1}(1).*u.*(2.*v - 2) + 4.*points{2,2}(1).*u.*v - 4.*points{2,3}(1).*u.*v - 4.*points{3,2}(1).*u.*v + 4.*points{3,3}(1).*u.*v - 2.*points{1,2}(1).*(2.*u - 2).*(v - 1) + 2.*points{2,2}(1).*(2.*u - 2).*(v - 1)) + 2.*(2.*points{2,3}(2).*u.*v.^2 - 2.*points{3,3}(2).*u.*v.^2 - points{1,1}(2).*(2.*u - 2).*(v - 1).^2 + points{2,1}(2).*(2.*u - 2).*(v - 1).^2 + 2.*points{2,1}(2).*u.*(v - 1).^2 - 2.*points{3,1}(2).*u.*(v - 1).^2 - points{1,3}(2).*v.^2.*(2.*u - 2) + points{2,3}(2).*v.^2.*(2.*u - 2) + 2.*points{1,2}(2).*v.*(2.*u - 2).*(v - 1) - 2.*points{2,2}(2).*v.*(2.*u - 2).*(v - 1) - 4.*points{2,2}(2).*u.*v.*(v - 1) + 4.*points{3,2}(2).*u.*v.*(v - 1)).*(2.*points{3,2}(2).*u.^2.*v - 2.*points{3,3}(2).*u.^2.*v - points{1,1}(2).*(2.*v - 2).*(u - 1).^2 + 2.*points{1,2}(2).*v.*(u - 1).^2 - 2.*points{1,3}(2).*v.*(u - 1).^2 + 2.*points{3,2}(2).*u.^2.*(v - 1) - points{3,1}(2).*u.^2.*(2.*v - 2) + 2.*points{1,2}(2).*(u - 1).^2.*(v - 1) - 2.*points{2,2}(2).*u.*(2.*u - 2).*(v - 1) + points{2,1}(2).*u.*(2.*u - 2).*(2.*v - 2) - 2.*points{2,2}(2).*u.*v.*(2.*u - 2) + 2.*points{2,3}(2).*u.*v.*(2.*u - 2)) + 2.*(2.*points{2,3}(3).*u.*v.^2 - 2.*points{3,3}(3).*u.*v.^2 - points{1,1}(3).*(2.*u - 2).*(v - 1).^2 + points{2,1}(3).*(2.*u - 2).*(v - 1).^2 + 2.*points{2,1}(3).*u.*(v - 1).^2 - 2.*points{3,1}(3).*u.*(v - 1).^2 - points{1,3}(3).*v.^2.*(2.*u - 2) + points{2,3}(3).*v.^2.*(2.*u - 2) + 2.*points{1,2}(3).*v.*(2.*u - 2).*(v - 1) - 2.*points{2,2}(3).*v.*(2.*u - 2).*(v - 1) - 4.*points{2,2}(3).*u.*v.*(v - 1) + 4.*points{3,2}(3).*u.*v.*(v - 1)).*(2.*points{3,2}(3).*u.^2.*v - 2.*points{3,3}(3).*u.^2.*v - points{1,1}(3).*(2.*v - 2).*(u - 1).^2 + 2.*points{1,2}(3).*v.*(u - 1).^2 - 2.*points{1,3}(3).*v.*(u - 1).^2 + 2.*points{3,2}(3).*u.^2.*(v - 1) - points{3,1}(3).*u.^2.*(2.*v - 2) + 2.*points{1,2}(3).*(u - 1).^2.*(v - 1) - 2.*points{2,2}(3).*u.*(2.*u - 2).*(v - 1) + points{2,1}(3).*u.*(2.*u - 2).*(2.*v - 2) - 2.*points{2,2}(3).*u.*v.*(2.*u - 2) + 2.*points{2,3}(3).*u.*v.*(2.*u - 2))]; 
OUT2 = [ 2.*(2.*points{2,3}(1).*u.*v.^2 - 2.*points{3,3}(1).*u.*v.^2 - points{1,1}(1).*(2.*u - 2).*(v - 1).^2 + points{2,1}(1).*(2.*u - 2).*(v - 1).^2 + 2.*points{2,1}(1).*u.*(v - 1).^2 - 2.*points{3,1}(1).*u.*(v - 1).^2 - points{1,3}(1).*v.^2.*(2.*u - 2) + points{2,3}(1).*v.^2.*(2.*u - 2) + 2.*points{1,2}(1).*v.*(2.*u - 2).*(v - 1) - 2.*points{2,2}(1).*v.*(2.*u - 2).*(v - 1) - 4.*points{2,2}(1).*u.*v.*(v - 1) + 4.*points{3,2}(1).*u.*v.*(v - 1)).*(2.*points{3,2}(1).*u.^2.*v - 2.*points{3,3}(1).*u.^2.*v - points{1,1}(1).*(2.*v - 2).*(u - 1).^2 + 2.*points{1,2}(1).*v.*(u - 1).^2 - 2.*points{1,3}(1).*v.*(u - 1).^2 + 2.*points{3,2}(1).*u.^2.*(v - 1) - points{3,1}(1).*u.^2.*(2.*v - 2) + 2.*points{1,2}(1).*(u - 1).^2.*(v - 1) - 2.*points{2,2}(1).*u.*(2.*u - 2).*(v - 1) + points{2,1}(1).*u.*(2.*u - 2).*(2.*v - 2) - 2.*points{2,2}(1).*u.*v.*(2.*u - 2) + 2.*points{2,3}(1).*u.*v.*(2.*u - 2)) - 2.*(qp_y - points{1,1}(2).*(u - 1).^2.*(v - 1).^2 - points{3,3}(2).*u.^2.*v.^2 - points{1,3}(2).*v.^2.*(u - 1).^2 - points{3,1}(2).*u.^2.*(v - 1).^2 + points{2,3}(2).*u.*v.^2.*(2.*u - 2) + 2.*points{1,2}(2).*v.*(u - 1).^2.*(v - 1) + points{2,1}(2).*u.*(2.*u - 2).*(v - 1).^2 + 2.*points{3,2}(2).*u.^2.*v.*(v - 1) - 2.*points{2,2}(2).*u.*v.*(2.*u - 2).*(v - 1)).*(4.*points{2,2}(2).*u.*(v - 1) - 4.*points{3,2}(2).*u.*(v - 1) + points{1,1}(2).*(2.*u - 2).*(2.*v - 2) - points{2,1}(2).*(2.*u - 2).*(2.*v - 2) - 2.*points{1,2}(2).*v.*(2.*u - 2) + 2.*points{1,3}(2).*v.*(2.*u - 2) - 2.*points{2,1}(2).*u.*(2.*v - 2) + 2.*points{2,2}(2).*v.*(2.*u - 2) - 2.*points{2,3}(2).*v.*(2.*u - 2) + 2.*points{3,1}(2).*u.*(2.*v - 2) + 4.*points{2,2}(2).*u.*v - 4.*points{2,3}(2).*u.*v - 4.*points{3,2}(2).*u.*v + 4.*points{3,3}(2).*u.*v - 2.*points{1,2}(2).*(2.*u - 2).*(v - 1) + 2.*points{2,2}(2).*(2.*u - 2).*(v - 1)) - 2.*(qp_z - points{1,1}(3).*(u - 1).^2.*(v - 1).^2 - points{3,3}(3).*u.^2.*v.^2 - points{1,3}(3).*v.^2.*(u - 1).^2 - points{3,1}(3).*u.^2.*(v - 1).^2 + points{2,3}(3).*u.*v.^2.*(2.*u - 2) + 2.*points{1,2}(3).*v.*(u - 1).^2.*(v - 1) + points{2,1}(3).*u.*(2.*u - 2).*(v - 1).^2 + 2.*points{3,2}(3).*u.^2.*v.*(v - 1) - 2.*points{2,2}(3).*u.*v.*(2.*u - 2).*(v - 1)).*(4.*points{2,2}(3).*u.*(v - 1) - 4.*points{3,2}(3).*u.*(v - 1) + points{1,1}(3).*(2.*u - 2).*(2.*v - 2) - points{2,1}(3).*(2.*u - 2).*(2.*v - 2) - 2.*points{1,2}(3).*v.*(2.*u - 2) + 2.*points{1,3}(3).*v.*(2.*u - 2) - 2.*points{2,1}(3).*u.*(2.*v - 2) + 2.*points{2,2}(3).*v.*(2.*u - 2) - 2.*points{2,3}(3).*v.*(2.*u - 2) + 2.*points{3,1}(3).*u.*(2.*v - 2) + 4.*points{2,2}(3).*u.*v - 4.*points{2,3}(3).*u.*v - 4.*points{3,2}(3).*u.*v + 4.*points{3,3}(3).*u.*v - 2.*points{1,2}(3).*(2.*u - 2).*(v - 1) + 2.*points{2,2}(3).*(2.*u - 2).*(v - 1)) - 2.*(qp_x - points{1,1}(1).*(u - 1).^2.*(v - 1).^2 - points{3,3}(1).*u.^2.*v.^2 - points{1,3}(1).*v.^2.*(u - 1).^2 - points{3,1}(1).*u.^2.*(v - 1).^2 + points{2,3}(1).*u.*v.^2.*(2.*u - 2) + 2.*points{1,2}(1).*v.*(u - 1).^2.*(v - 1) + points{2,1}(1).*u.*(2.*u - 2).*(v - 1).^2 + 2.*points{3,2}(1).*u.^2.*v.*(v - 1) - 2.*points{2,2}(1).*u.*v.*(2.*u - 2).*(v - 1)).*(4.*points{2,2}(1).*u.*(v - 1) - 4.*points{3,2}(1).*u.*(v - 1) + points{1,1}(1).*(2.*u - 2).*(2.*v - 2) - points{2,1}(1).*(2.*u - 2).*(2.*v - 2) - 2.*points{1,2}(1).*v.*(2.*u - 2) + 2.*points{1,3}(1).*v.*(2.*u - 2) - 2.*points{2,1}(1).*u.*(2.*v - 2) + 2.*points{2,2}(1).*v.*(2.*u - 2) - 2.*points{2,3}(1).*v.*(2.*u - 2) + 2.*points{3,1}(1).*u.*(2.*v - 2) + 4.*points{2,2}(1).*u.*v - 4.*points{2,3}(1).*u.*v - 4.*points{3,2}(1).*u.*v + 4.*points{3,3}(1).*u.*v - 2.*points{1,2}(1).*(2.*u - 2).*(v - 1) + 2.*points{2,2}(1).*(2.*u - 2).*(v - 1)) + 2.*(2.*points{2,3}(2).*u.*v.^2 - 2.*points{3,3}(2).*u.*v.^2 - points{1,1}(2).*(2.*u - 2).*(v - 1).^2 + points{2,1}(2).*(2.*u - 2).*(v - 1).^2 + 2.*points{2,1}(2).*u.*(v - 1).^2 - 2.*points{3,1}(2).*u.*(v - 1).^2 - points{1,3}(2).*v.^2.*(2.*u - 2) + points{2,3}(2).*v.^2.*(2.*u - 2) + 2.*points{1,2}(2).*v.*(2.*u - 2).*(v - 1) - 2.*points{2,2}(2).*v.*(2.*u - 2).*(v - 1) - 4.*points{2,2}(2).*u.*v.*(v - 1) + 4.*points{3,2}(2).*u.*v.*(v - 1)).*(2.*points{3,2}(2).*u.^2.*v - 2.*points{3,3}(2).*u.^2.*v - points{1,1}(2).*(2.*v - 2).*(u - 1).^2 + 2.*points{1,2}(2).*v.*(u - 1).^2 - 2.*points{1,3}(2).*v.*(u - 1).^2 + 2.*points{3,2}(2).*u.^2.*(v - 1) - points{3,1}(2).*u.^2.*(2.*v - 2) + 2.*points{1,2}(2).*(u - 1).^2.*(v - 1) - 2.*points{2,2}(2).*u.*(2.*u - 2).*(v - 1) + points{2,1}(2).*u.*(2.*u - 2).*(2.*v - 2) - 2.*points{2,2}(2).*u.*v.*(2.*u - 2) + 2.*points{2,3}(2).*u.*v.*(2.*u - 2)) + 2.*(2.*points{2,3}(3).*u.*v.^2 - 2.*points{3,3}(3).*u.*v.^2 - points{1,1}(3).*(2.*u - 2).*(v - 1).^2 + points{2,1}(3).*(2.*u - 2).*(v - 1).^2 + 2.*points{2,1}(3).*u.*(v - 1).^2 - 2.*points{3,1}(3).*u.*(v - 1).^2 - points{1,3}(3).*v.^2.*(2.*u - 2) + points{2,3}(3).*v.^2.*(2.*u - 2) + 2.*points{1,2}(3).*v.*(2.*u - 2).*(v - 1) - 2.*points{2,2}(3).*v.*(2.*u - 2).*(v - 1) - 4.*points{2,2}(3).*u.*v.*(v - 1) + 4.*points{3,2}(3).*u.*v.*(v - 1)).*(2.*points{3,2}(3).*u.^2.*v - 2.*points{3,3}(3).*u.^2.*v - points{1,1}(3).*(2.*v - 2).*(u - 1).^2 + 2.*points{1,2}(3).*v.*(u - 1).^2 - 2.*points{1,3}(3).*v.*(u - 1).^2 + 2.*points{3,2}(3).*u.^2.*(v - 1) - points{3,1}(3).*u.^2.*(2.*v - 2) + 2.*points{1,2}(3).*(u - 1).^2.*(v - 1) - 2.*points{2,2}(3).*u.*(2.*u - 2).*(v - 1) + points{2,1}(3).*u.*(2.*u - 2).*(2.*v - 2) - 2.*points{2,2}(3).*u.*v.*(2.*u - 2) + 2.*points{2,3}(3).*u.*v.*(2.*u - 2)),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    2.*(2.*points{3,2}(1).*u.^2.*v - 2.*points{3,3}(1).*u.^2.*v - points{1,1}(1).*(2.*v - 2).*(u - 1).^2 + 2.*points{1,2}(1).*v.*(u - 1).^2 - 2.*points{1,3}(1).*v.*(u - 1).^2 + 2.*points{3,2}(1).*u.^2.*(v - 1) - points{3,1}(1).*u.^2.*(2.*v - 2) + 2.*points{1,2}(1).*(u - 1).^2.*(v - 1) - 2.*points{2,2}(1).*u.*(2.*u - 2).*(v - 1) + points{2,1}(1).*u.*(2.*u - 2).*(2.*v - 2) - 2.*points{2,2}(1).*u.*v.*(2.*u - 2) + 2.*points{2,3}(1).*u.*v.*(2.*u - 2)).^2 + 2.*(2.*points{3,2}(2).*u.^2.*v - 2.*points{3,3}(2).*u.^2.*v - points{1,1}(2).*(2.*v - 2).*(u - 1).^2 + 2.*points{1,2}(2).*v.*(u - 1).^2 - 2.*points{1,3}(2).*v.*(u - 1).^2 + 2.*points{3,2}(2).*u.^2.*(v - 1) - points{3,1}(2).*u.^2.*(2.*v - 2) + 2.*points{1,2}(2).*(u - 1).^2.*(v - 1) - 2.*points{2,2}(2).*u.*(2.*u - 2).*(v - 1) + points{2,1}(2).*u.*(2.*u - 2).*(2.*v - 2) - 2.*points{2,2}(2).*u.*v.*(2.*u - 2) + 2.*points{2,3}(2).*u.*v.*(2.*u - 2)).^2 + 2.*(2.*points{3,2}(3).*u.^2.*v - 2.*points{3,3}(3).*u.^2.*v - points{1,1}(3).*(2.*v - 2).*(u - 1).^2 + 2.*points{1,2}(3).*v.*(u - 1).^2 - 2.*points{1,3}(3).*v.*(u - 1).^2 + 2.*points{3,2}(3).*u.^2.*(v - 1) - points{3,1}(3).*u.^2.*(2.*v - 2) + 2.*points{1,2}(3).*(u - 1).^2.*(v - 1) - 2.*points{2,2}(3).*u.*(2.*u - 2).*(v - 1) + points{2,1}(3).*u.*(2.*u - 2).*(2.*v - 2) - 2.*points{2,2}(3).*u.*v.*(2.*u - 2) + 2.*points{2,3}(3).*u.*v.*(2.*u - 2)).^2 - 2.*(2.*points{1,1}(1).*(u - 1).^2 - 4.*points{1,2}(1).*(u - 1).^2 + 2.*points{1,3}(1).*(u - 1).^2 + 2.*points{3,1}(1).*u.^2 - 4.*points{3,2}(1).*u.^2 + 2.*points{3,3}(1).*u.^2 - 2.*points{2,1}(1).*u.*(2.*u - 2) + 4.*points{2,2}(1).*u.*(2.*u - 2) - 2.*points{2,3}(1).*u.*(2.*u - 2)).*(qp_x - points{1,1}(1).*(u - 1).^2.*(v - 1).^2 - points{3,3}(1).*u.^2.*v.^2 - points{1,3}(1).*v.^2.*(u - 1).^2 - points{3,1}(1).*u.^2.*(v - 1).^2 + points{2,3}(1).*u.*v.^2.*(2.*u - 2) + 2.*points{1,2}(1).*v.*(u - 1).^2.*(v - 1) + points{2,1}(1).*u.*(2.*u - 2).*(v - 1).^2 + 2.*points{3,2}(1).*u.^2.*v.*(v - 1) - 2.*points{2,2}(1).*u.*v.*(2.*u - 2).*(v - 1)) - 2.*(2.*points{1,1}(2).*(u - 1).^2 - 4.*points{1,2}(2).*(u - 1).^2 + 2.*points{1,3}(2).*(u - 1).^2 + 2.*points{3,1}(2).*u.^2 - 4.*points{3,2}(2).*u.^2 + 2.*points{3,3}(2).*u.^2 - 2.*points{2,1}(2).*u.*(2.*u - 2) + 4.*points{2,2}(2).*u.*(2.*u - 2) - 2.*points{2,3}(2).*u.*(2.*u - 2)).*(qp_y - points{1,1}(2).*(u - 1).^2.*(v - 1).^2 - points{3,3}(2).*u.^2.*v.^2 - points{1,3}(2).*v.^2.*(u - 1).^2 - points{3,1}(2).*u.^2.*(v - 1).^2 + points{2,3}(2).*u.*v.^2.*(2.*u - 2) + 2.*points{1,2}(2).*v.*(u - 1).^2.*(v - 1) + points{2,1}(2).*u.*(2.*u - 2).*(v - 1).^2 + 2.*points{3,2}(2).*u.^2.*v.*(v - 1) - 2.*points{2,2}(2).*u.*v.*(2.*u - 2).*(v - 1)) - 2.*(2.*points{1,1}(3).*(u - 1).^2 - 4.*points{1,2}(3).*(u - 1).^2 + 2.*points{1,3}(3).*(u - 1).^2 + 2.*points{3,1}(3).*u.^2 - 4.*points{3,2}(3).*u.^2 + 2.*points{3,3}(3).*u.^2 - 2.*points{2,1}(3).*u.*(2.*u - 2) + 4.*points{2,2}(3).*u.*(2.*u - 2) - 2.*points{2,3}(3).*u.*(2.*u - 2)).*(qp_z - points{1,1}(3).*(u - 1).^2.*(v - 1).^2 - points{3,3}(3).*u.^2.*v.^2 - points{1,3}(3).*v.^2.*(u - 1).^2 - points{3,1}(3).*u.^2.*(v - 1).^2 + points{2,3}(3).*u.*v.^2.*(2.*u - 2) + 2.*points{1,2}(3).*v.*(u - 1).^2.*(v - 1) + points{2,1}(3).*u.*(2.*u - 2).*(v - 1).^2 + 2.*points{3,2}(3).*u.^2.*v.*(v - 1) - 2.*points{2,2}(3).*u.*v.*(2.*u - 2).*(v - 1))] ; 
 
end