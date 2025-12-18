# docker_install
chmod +x docker_install.sh
./docker_install.sh

```
12月 18 23:23:55 clari systemd[1]: docker.service: Main process exited, code=exited, status=1/FAILURE
12月 18 23:23:55 clari systemd[1]: docker.service: Failed with result 'exit-code'.
12月 18 23:23:55 clari systemd[1]: Failed to start Docker Application Container Engine.
12月 18 23:23:57 clari systemd[1]: docker.service: Service RestartSec=2s expired, scheduling restart.
12月 18 23:23:57 clari systemd[1]: docker.service: Scheduled restart job, restart counter is at 3.
12月 18 23:23:57 clari systemd[1]: Stopped Docker Application Container Engine.
12月 18 23:23:57 clari systemd[1]: docker.service: Start request repeated too quickly.
12月 18 23:23:57 clari systemd[1]: docker.service: Failed with result 'exit-code'.
12月 18 23:23:57 clari systemd[1]: Failed to start Docker Application Container Engine.

```
<img width="1831" height="484" alt="image" src="https://github.com/user-attachments/assets/4d121016-0557-4a88-9c64-6873c6f3547e" />
```
sudo systemctl reset-failed docker.service
sudo systemctl reset-failed docker.socket
systemctl restart docker
```

from https://cloud.tencent.com/developer/article/2499340
