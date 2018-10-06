function [tdb] = RtoT(rdb)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
tdb =  10 * log(1 - 10.^(rdb/10));
end

