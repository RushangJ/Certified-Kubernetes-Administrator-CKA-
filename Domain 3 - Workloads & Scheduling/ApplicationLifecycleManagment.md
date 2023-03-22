## Rolling Updates and Rollbacks:

#### Deployment Strategy:

- Recreate: Destroy and create new / downside application down
- Rolling updates: default deployment strregy, take down older version bring up new version one by one. 

#### Rollback:

- Kubernetes allows you to rollback to privious version. 

#### Commands and Arguments: 

- Command field overwrite the entrypoint instructions and args field overwrite command instruction in docker file.

#### Configure Environment Variables in Applications: 

- ENV Value Types:
    1. Plain Key Value
        env:
            -name: APP_COLOR
             value: pink
    2. ConfigMap: When you have lots of pod defination files it will become dificult to manager enviourment data stored within various files.We can take this information out of defination file and manage it centrally. 
        env: 
            -name: APP_COLOR
             valueFrom:
                configMapKeyRef:
    3. Secrets:
        env:
            -name: APP_COLOR
             valueFrom:
                secreatKeyRef:


