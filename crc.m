function crcData = crc(data,div)

% Formato a uint64
m1 = string(data);
m2 = join(['0b' m1],'');
message = uint64(str2num(m2));
messageLength = length(m1);

d1 = string(div);
d2 = join(['0b' d1],'');
divisor = uint64(str2num(d2));
divisorDegree = length(div)-1;

divisor = bitshift(divisor,messageLength-divisorDegree-1);
divisor = bitshift(divisor,divisorDegree);
remainder = bitshift(message,divisorDegree);

for k = 1:messageLength
    if bitget(remainder,messageLength+divisorDegree)
        remainder = bitxor(remainder,divisor);
    end
    remainder = bitshift(remainder,1);
end

CRC_check_value = bitshift(remainder,-messageLength);
crcData = dec2bin(CRC_check_value);

end