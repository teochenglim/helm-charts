helm plugin install https://github.com/instrumenta/helm-kubeval
pwd
ls -lR
charts=$(ls -d charts/*)
for c in charts; do helm kubeval $c; done
