#!/bin/bash

echo "Способности  Venom Focus Dry Skin" > croagunk3
echo "Возможности  Overland=8 Jump=3 Power=1" > cyndaquil3

# grimer5
mkdir -p grimer5/arcanine grimer5/voltorb
echo "satk=4 sdef=4" > grimer5/tyrogue
echo "spd=4" >> grimer5/tyrogue

echo "Способности  Peck Tail Whip Water Sport Supersonic Horn" > grimer5/goldeen
echo "Attack Water Pulse Flail Aqua Ring Fury Attack Waterfall Horn Drill" >> grimer5/goldeen
echo "Agility Soak Megahorn" >> grimer5/goldeen

echo "Способности  Wrap Growl Astonish" > grimer5/chingling
echo "Confusion Uproar Last Resort Entrainment" >> grimer5/chingling

echo "Тип дипеты" > grimer5/koffing
echo "Nullivore" >> grimer5/koffing

# magikarp1
mkdir -p magikarp1/excadrill magikarp1/gurdurr
echo "Тип диеты  Herbivore" > magikarp1/togepi

echo "Ходы  Body Slam Covet" > magikarp1/espeon
echo "Double-Edge Heal Bell Helping Hand Hyper Voice Iron Tail Last Resort" >> magikarp1/espeon
echo "Magic Coat Magic Room Mud-Slap Role Play Signal Beam Skill Swap Sleep" >> magikarp1/espeon
echo "Talk Snore Swift Trick Zen Headbutt" >> magikarp1/espeon

echo "weight=199.5" > magikarp1/charizard
echo "height=67.0 atk=8 def=8" >> magikarp1/charizard

# ----
echo "Тип покемона  WATER" > panpour2
echo "NONE" >> panpour2

# seismitoad3
mkdir -p seismitoad3/bidoof seismitoad3/gorebyss seismitoad3/sunkern seismitoad3/clefairy

echo "Способности  Bubble Tackle Supersonic Bubblebeam Confuse" > seismitoad3/mantyke
echo "Ray Wind Attack Headbutt Water Pulse Wide Guard Take Down Agility Air" >> seismitoad3/mantyke
echo "Slash Aqua Ring Bounce Hydre Pump" >> seismitoad3/mantyke

echo "Ходы  Body Slam Defense" > seismitoad3/nidoranM
echo "Curl Double-Edge Drill Run Helping Hand Iron Tail Mud-Slap Shock Wave" >> seismitoad3/nidoranM
echo "Sleep Talk Snore Sucker Punch Super Fang Water Pulse" >> seismitoad3/nidoranM

# 0 - 000
# 1 - 001
# 2 - 010
# 3 - 011
# 4 - 100
# 5 - 101
# 6 - 110
# 7 - 111

# №2
chmod 006 croagunk3
chmod 400 cyndaquil3
chmod 764 grimer5
chmod 440 grimer5/tyrogue
chmod 004 grimer5/goldeen 
chmod 622 grimer5/chingling 
chmod 750 grimer5/arcanine
chmod 666 grimer5/koffing
chmod 700 grimer5/voltorb 
chmod 533 magikarp1 
chmod 404 magikarp1/togepi 
chmod ug-rwx,o=rw magikarp1/espeon 
chmod 750 magikarp1/excadrill 
chmod 500 magikarp1/gurdurr
chmod 624 magikarp1/charizard 
chmod 600 panpour2 
chmod u=rx,og=rwx seismitoad3 
chmod 737 seismitoad3/bidoof 
chmod 664 seismitoad3/mantyke
chmod 511 seismitoad3/gorebyss
chmod 600 seismitoad3/nidoranM
chmod 317 seismitoad3/sunkern
chmod 777 seismitoad3/clefairy

# №3
chmod 777 grimer5/goldeen
cp -r grimer5 seismitoad3/sunkern/
chmod 004 grimer5/goldeen
# ---
chmod 777 magikarp1 
ln panpour2 magikarp1/espeonpanpour
chmod 533 magikarp1 
ln -s magikarp1 Copy_43
cat panpour2 > grimer5/goldeenpanpour
# ---
cat grimer5/chingling > cyndaquil3_95
cat seismitoad3/nidoranM >> cyndaquil3_95
# ---
chmod 777 croagunk3
chmod 777 magikarp1/gurdurr
cp croagunk3 magikarp1/gurdurr
chmod 006 croagunk3
chmod 500 magikarp1/gurdurr
# ---
chmod 777 magikarp1
ln -s croagunk3 magikarp1/espeoncroagunk
chmod 533 magikarp1


# №4
(wc -l grimer5/chingling grimer5/koffing magikarp1/togepi | head -3 | sort -n) 2>&1
# ---
(ls -RlEt | grep '^-.*3$' | sort -rM | tail -2)  2>&1
# ---
cat -n croagunk3 | grep -i "ke"
# ---
wc -l croagunk3 >> croagunk3 2>&1
# ---
ls -RlEu | grep '^-.g.*$' | sort -M | head -4
# ---
(ls -Rl magikarp1 | grep '^-' | sort -rk9) 2>/tmp/stderr


# №5
chmod u+wx magikarp1
chmod u+w magikarp1/* 2>/dev/null
chmod u+wx seismitoad3
chmod u=rwx seismitoad3/sunkern

rm -f cyndaquil3
rm grimer5/koffing
rm Copy_*
rm magikarp1/espeonpanpo*
rm -r magikarp1
rm -rf seismitoad3/sunkern
chmod u-wx seismitoad3