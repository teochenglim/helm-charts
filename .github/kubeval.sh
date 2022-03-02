helm plugin install https://github.com/instrumenta/helm-kubeval
charts=$(ls -d charts/*)
for c in charts; do helm kubeval $c; done
