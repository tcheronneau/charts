# charts
Helm charts for LinuxServer docker image

# First chart:  Sonarr
You can deploy it by running :
helm repo add charts https://tcheronneau.github.io/charts

Then simply run : helm install sonarr

Default parameters :  
TZ : Europe/Paris  
PUID/PGID : 1005  


In order to run it with your variables create a values.yml file then run :
helm install -f ./values.yml sonarr

At least you should have :  
`ingress:
  hosts:
    - sonarr.yourdomain.com

volumes:
  - name: sonarr-config
    type: host
    path: /opt/sonarr
    containerPath: /config
  - name: data
    type: host
    path: /data
    containerPath: /data
  - name: download
    type: host
    path: /download
    containerPath: /download
`

You can also specify persistentVolumeClaim for volumes like this :
`
volumes:
  - name: data
    type: PVC
    path: PVCNAME
    containerPath: /data
`
