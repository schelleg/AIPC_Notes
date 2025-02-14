# AIPC_Notes

PyTorch Dockers
```bash
sudo apt install docker.io
docker pull rocm/pytorch:latest
docker run --device /dev/kfd --device /dev/dri --security-opt seccomp=unconfined rocm/pytorch
```
