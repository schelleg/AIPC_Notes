# AIPC_Notes

## From Clean Ubuntu 24.04 Image on STX MiniForums AI PC

### PyTorch Dockers
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

### DPKG with AMD
```bash
grahams@grahams-EliteMini-Series:~/Desktop$ dpkg -l | grep -E "amdgpu|rocm|mesa"
ii  libdrm-amdgpu1:amd64                          2.4.120-2build1                          amd64        Userspace interface to amdgpu-specific kernel DRM services -- runtime
ii  libegl-mesa0:amd64                            24.0.9-0ubuntu0.1                        amd64        free implementation of the EGL API -- Mesa vendor library
ii  libgl1-mesa-dri:amd64                         24.0.9-0ubuntu0.1                        amd64        free implementation of the OpenGL API -- DRI modules
ii  libglapi-mesa:amd64                           24.0.9-0ubuntu0.1                        amd64        free implementation of the GL API -- shared library
ii  libglu1-mesa:amd64                            9.0.2-1.1build1                          amd64        Mesa OpenGL utility library (GLU)
ii  libglx-mesa0:amd64                            24.0.9-0ubuntu0.1                        amd64        free implementation of the OpenGL API -- GLX vendor library
ii  mesa-vulkan-drivers:amd64                     24.0.9-0ubuntu0.1                        amd64        Mesa Vulkan graphics drivers
ii  xserver-xorg-video-amdgpu                     23.0.0-1build1                           amd64        X.Org X server -- AMDGPU display driver
```

### LSMOD
```bash
grahams@grahams-EliteMini-Series:~/Desktop$ lsmod | grep -E "amdgpu|rocm|mesa"
amdgpu              19992576  6
amdxcp                 12288  1 amdgpu
drm_exec               12288  1 amdgpu
gpu_sched              61440  1 amdgpu
drm_buddy              24576  1 amdgpu
drm_suballoc_helper    20480  1 amdgpu
drm_ttm_helper         16384  1 amdgpu
ttm                   110592  2 amdgpu,drm_ttm_helper
drm_display_helper    278528  1 amdgpu
i2c_algo_bit           16384  1 amdgpu
video                  77824  1 amdgpu
```

