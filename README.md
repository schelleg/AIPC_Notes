# AIPC_Notes

PyTorch Dockers
```bash
sudo apt install docker.io
docker pull rocm/pytorch:latest
docker run --device /dev/kfd --device /dev/dri --security-opt seccomp=unconfined rocm/pytorch
```

### ROCM search command
```bash

# clean 24.04 image, did run apt install docker.io
grahams@grahams-EliteMini-Series:~/Desktop$ apt list  | grep rocm

WARNING: apt does not have a stable CLI interface. Use with caution in scripts.

libfcgi-procmanager-maxrequests-perl/noble 0.2-1.1 all
libfcgi-procmanager-perl/noble 0.28-3 all
librocm-smi-dev/noble 5.7.0-1 amd64
librocm-smi64-1/noble 5.7.0-1 amd64
librust-profiling-procmacros-dev/noble 1.0.14-1 amd64
procmail-lib/noble 1:2009.1202-5 all
procmail/noble 3.24-1ubuntu2 amd64
procmeter3/noble 3.6-3.1build2 amd64
rocm-cmake/noble 6.0.0-1 all
rocm-device-libs-17/noble 6.0+git20231212.5a852ed-2 amd64
rocm-smi/noble 5.7.0-1 amd64
rocminfo/noble 5.7.1-3build1 amd64
```
