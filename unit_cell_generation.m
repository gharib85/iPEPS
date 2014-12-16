function [ tensor_A,tensor_B,tensor_C, tensor_D] =...
    unit_cell_generation( PHYS_DIM,BOND_DIM,varargin )
%   Generates and returns initial random tensors A and B, with the reduced tensors a
%   and b.
% tensor_A for the upper tensor, conj(tensor_A) for the lower tensor;
% (u,l,d,r)=(1,2,3,4), (5,6,7,8)


switch nargin
    case 2
        tensor_A_unnormalized=...
            randn(PHYS_DIM,BOND_DIM,BOND_DIM,BOND_DIM,BOND_DIM)+...
            1j*randn(PHYS_DIM,BOND_DIM,BOND_DIM,BOND_DIM,BOND_DIM);
        tensor_B_unnormalized=...
            randn(PHYS_DIM,BOND_DIM,BOND_DIM,BOND_DIM,BOND_DIM)+...
            1j*randn(PHYS_DIM,BOND_DIM,BOND_DIM,BOND_DIM,BOND_DIM);
        
        % normalization by a largest modulus element to avoid divergence during RG
        tensor_A=tensor_A_unnormalized/max(abs(tensor_A_unnormalized(:)));
        tensor_B=tensor_B_unnormalized/max(abs(tensor_B_unnormalized(:)));
        tensor_C=tensor_B;
        tensor_D=tensor_A;
    case 3
        tensor_A_unnormalized=...
            randn(PHYS_DIM,BOND_DIM,BOND_DIM,BOND_DIM,BOND_DIM)+...
            1j*randn(PHYS_DIM,BOND_DIM,BOND_DIM,BOND_DIM,BOND_DIM);
        tensor_B_unnormalized=...
            randn(PHYS_DIM,BOND_DIM,BOND_DIM,BOND_DIM,BOND_DIM)+...
            1j*randn(PHYS_DIM,BOND_DIM,BOND_DIM,BOND_DIM,BOND_DIM);
        tensor_C_unnormalized=...
            randn(PHYS_DIM,BOND_DIM,BOND_DIM,BOND_DIM,BOND_DIM)+...
            1j*randn(PHYS_DIM,BOND_DIM,BOND_DIM,BOND_DIM,BOND_DIM);
        tensor_D_unnormalized=...
            randn(PHYS_DIM,BOND_DIM,BOND_DIM,BOND_DIM,BOND_DIM)+...
            1j*randn(PHYS_DIM,BOND_DIM,BOND_DIM,BOND_DIM,BOND_DIM);
        % normalization by a largest modulus element to avoid divergence during RG
        tensor_A=tensor_A_unnormalized/max(abs(tensor_A_unnormalized(:)));
        tensor_B=tensor_B_unnormalized/max(abs(tensor_B_unnormalized(:)));
        tensor_C=tensor_C_unnormalized/max(abs(tensor_C_unnormalized(:)));
        tensor_D=tensor_D_unnormalized/max(abs(tensor_D_unnormalized(:)));
end
end
