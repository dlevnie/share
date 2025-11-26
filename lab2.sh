mkdir Module_1 && cd Module_1
mkdir Digital_Signature && cd Digital_Signature
mkdir Alice Bob
cd Alice
openssl genpkey -algorithm RSA -out alice_privatekey.pem
openssl rsa -in alice_privatekey.pem -out alice_publickey.pem -pubout -outform PEM
echo "This is Alice's digest." > alice_digest.txt
openssl dgst -sha256 -sign alice_privatekey.pem -out alice_signature.bin alice_digest.txt
ls
     history
    cp alice_publickey.pem alice_signature.bin alice_digest.txt /home/aciadmin/Module_1/Digital_Signature/Bob
     cp alice_publickey.pem alice_signature.bin alice_digest.txt ~/Module_1/Digital_Signature/Bob
     cd ~/Module_1/Digital_Signature/Bob
     openssl dgst -sha256 -verify alice_publickey.pem -signature alice_signature.bin alice_digest.txt
     echo "This is a change to the digest." > alice_digest.txt
     openssl dgst -sha256 -verify alice_publickey.pem -signature alice_signature.bin alice_digest.txt