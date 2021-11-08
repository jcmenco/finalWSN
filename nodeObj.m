function nodoInfo = nodeObj(nodo)

% Payload (información del sensor): 50 bits
nodoInfo.payload = round(rand(1,50));

% Encabezado (ID y conteo de saltos): 12+ bits
nodoInfo.header = dec2bin(nodo);

% Divisor para la detección de errores: 15 bits
nodoInfo.divisor = round(rand(1,15));

% CRC para la detección de errores 13 bits
nodoInfo.crc = crc(nodoInfo.payload,nodoInfo.divisor);

% Data a transmitir (ID+HC+PL+CRC): 75+ bits
nodoInfo.data = join([nodoInfo.header join(string(nodoInfo.payload),'') nodoInfo.crc],'');

end