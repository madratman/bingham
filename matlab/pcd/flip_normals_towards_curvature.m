function pcd2 = flip_normals_towards_curvature(pcd)
%pcd2 = flip_normals_towards_curvature(pcd)

C = sign(pcd.C);

pcd2 = pcd;
pcd2.NX = C.*pcd.NX;
pcd2.NY = C.*pcd.NY;
pcd2.NZ = C.*pcd.NZ;

pcd2.data = populate_pcd_data(pcd2);

if isfield(pcd, 'Q')
   pcd2.Q = get_pcd_quaternions(pcd2.data, pcd2.columns);
end