#!/bin/bash
sudo puppet cert list | grep e13t-mbx | cut -d " " -f3 | sed -s "s|\"| |g" | sudo xargs puppet cert sign

 primoedit
#!/bin/bash
echo "Ricerca MX per zona"

for planet in deis.unibo.it mail.ing.unibo.it aronte.fci.unibo.it bomet.fci.unibo.it ms.fci.unibo.it fci.unibo.it ciram.unibo.it arces.unibo.it; do echo "=== $planet ===" ;dig NS  $planet +short ; echo === MX per $planet ===; dig MX $planet +short ;  done
