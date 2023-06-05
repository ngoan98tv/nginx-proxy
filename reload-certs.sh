#!/bin/sh

cd certs

for i in $(ls -d */)
do 
  domain=${i%%/}
  ln -s ./$domain/chain.pem $domain.chain.pem
  ln -s ./$domain/fullchain.pem $domain.crt
  ln -s ./dhparam.pem $domain.dhparam.pem
  ln -s ./$domain/key.pem $domain.key
done
