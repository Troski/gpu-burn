FROM nvidia/cuda
RUN apt-get update && apt-get install -y git stress-ng make
RUN git clone https://github.com/yotabits/gpu-burn.git
RUN cd gpu-burn && make
