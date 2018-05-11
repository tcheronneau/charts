#  Helm chart jackett
Simply run :  
helm install jackett  
Default value can be found in values.yml

## Override default values

In order to run it with your variables create a values.yml file then run :  
helm install -f ./values.yml jackett

At least you should have :  

    ingress:
      hosts:
        - jackett.yourdomain.com

    volumes:
      - name: jackett-config
        type: host
        path: /opt/jackett
        containerPath: /config


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
