#!/bin/sh

cat log.waveFoam | grep -w 'Time =' | cut -d' ' -f3 >Time.dat
cat log.waveFoam | grep 'Restraint moorDynR1:'|cut -d ' ' -f4|sed -n '{n;p}' |tr -d '(' >surge.dat
cat log.waveFoam | grep 'Restraint moorDynR1:'|cut -d ' ' -f5|sed -n '{n;p}'  |tr -d '(' >sway.dat
cat log.waveFoam | grep 'Restraint moorDynR1:'|cut -d ' ' -f6|sed -n '{n;p}'  |tr -d ')' >heave.dat
cat log.waveFoam | grep 'Restraint moorDynR1:'|cut -d ' ' -f7|sed -n '{n;p}'  |tr -d '(' >roll.dat
cat log.waveFoam | grep 'Restraint moorDynR1:'|cut -d ' ' -f8|sed -n '{n;p}'  |tr -d '(' >pitch.dat
cat log.waveFoam | grep 'Restraint moorDynR1:'|cut -d ' ' -f9|sed -n '{n;p}'  |tr -d ')' >yaw.dat
# cat log.waveFoam | grep 'Restraint moorDynR1:'|cut -d ' ' -f9|sed -n '{n;n;p}'  |tr -d ')' >yaw.dat
paste Time.dat surge.dat sway.dat heave.dat roll.dat pitch.dat yaw.dat >motion.dat
paste Time.dat heave.dat >heavemotion.dat
rm -rf Time.dat
rm -rf surge.dat
rm -rf sway.dat
rm -rf heave.dat
rm -rf roll.dat
rm -rf pitch.dat
rm -rf yaw.dat

# foamMonitor plotheave.dat
