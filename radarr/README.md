#  Helm chart Radarr
Simply run :  
helm install radarr  
Default value can be found in values.yml

## Override default values

In order to run it with your variables create a values.yml file then run :  
helm install -f ./values.yml radarr

At least you should have :  

    ingress:
      hosts:
        - radarr.yourdomain.com

    volumes:
      - name: radarr-config
        type: host
        path: /opt/radarr
        containerPath: /config
      - name: data
        type: host
        path: /data
        containerPath: /data
      - name: download
        type: host
        path: /download
        containerPath: /download


You can also specify persistentVolumeClaim for volumes like this :

    volumes:
      - name: data
        type: PVC
        path: PVCNAME
        containerPath: /data
        
For env values : 

    env:
      - name: TZ
        value: Europe/Paris
