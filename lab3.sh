mkdir CSR && cd CSR
mkdir SecPlusLLC && cd SecPlusLLC
openssl req -newkey rsa:2048 -keyout SecPlusLLC_privatekey.pem -out SecPlusLLC.csr
cat SecPlusLLC.csr
mkdir /home/aciadmin/Module_1/CSR/CA && cp SecPlusLLC.csr /home/aciadmin/Module_1/CSR/CA
openssl genpkey -algorithm RSA -out CA_privatekey.pem
openssl req -newkey rsa:2048 -nodes -keyout CA_privatekey.pem -x509 -days 1999 -out SecPlusLLC.crt
cat SecPlusLLC.crt
cp SecPlusLLC.crt /home/aciadmin/Module_1/CSR/SecPlusLLC
ls -la /home/aciadmin/Module_1/CSR/SecPlusLLC