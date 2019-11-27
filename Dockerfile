FROM nvidia/cuda
RUN apt-get update && apt-get install -y git stress-ng make
#RUN git clone https://github.com/yotabits/gpu-burn.git
RUN mkdir gpu-burn
COPY compare.cu gpu-burn/
COPY gpu_burn-drv.cpp gpu-burn/
COPY Makefile gpu-burn
RUN cd gpu-burn && make
