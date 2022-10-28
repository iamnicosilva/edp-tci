sudo groupadd comision1
sudo groupadd comision2
useradd -g comision1 -m Teresa
useradd -g comision1 -m Lucas
useradd -g comision2 -m Pablo
useradd -g comision2 -m Elsa
su Pablo
touch topsecretsdepablo.txt
chmod 600 topsecretsdepablo.txt
touch amigos.txt
chmod 660 amigos.txt
su Elsa
touch datosdecompanheros.txt
chmod 666 datosdecompañeros.txt
cp datosdecompanheros.txt /home/alumno/
chown alumno/alumno /home/alumno/datosdecompanheros.txt
su Pablo

