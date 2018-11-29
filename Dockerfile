ROM nvidia/cuda-ppc64le:9.2-devel
COPY . /helloworldcuda
WORKDIR /helloworldcuda
ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility
#RUN apt-get install gedit
RUN nvcc hello.cu -o hello
CMD ["./hello"]
