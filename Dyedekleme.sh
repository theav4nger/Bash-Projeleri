#!/bin/bash
#Dosya Yedekleme
figlet THE AVENGER
clear
date=`date +%F`
mkdir /tmp/$1&&touch /tmp/$1/dosya1.txt /tmp/$1/dosya2.txt
echo /tmp Klasörüne $1 Klasörü ve içeriği oluşturuldu.
sleep 5
mkdir -p /tmp/backups/$1_$date
echo /tmp Klasörüne /backup klasörü ve $1_$date Klasörü oluşturuldu.
sleep 5
cp -R /tmp/$1 /tmp/backups/$1_$date
echo /tmp klasöründe bulunan $1 klasör içeriği /tmp/backups/$1_$date klasörüne yedeklendi.
sleep 5
echo Yedekleme tamamlandı.
echo isterseniz /tmp/$1 klasörünü ve
echo /tmp/backups/$1_$date klasörünü silebilirsiniz.
echo /tmp klasörü sisteminizi kapattığınızda kendisi zaten silinir.
sleep 1
echo ESAS KLASÖR İÇERİĞİ
ls -l /tmp/$1
sleep 1
echo YEDEKLENEN KLASÖR İÇERİĞİ
ls -l /tmp/backups/$1_$date/$1/
echo Script sona erdi…
