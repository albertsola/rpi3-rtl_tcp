FROM arm64v8/ubuntu
 
MAINTAINER Albert Sola <albert.sola@gmail.com>
 
RUN apt-get update && \
    apt-get install -y rtl-sdr && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
 
WORKDIR /
EXPOSE 1234
CMD ["rtl_tcp", "-a", "0.0.0.0", "-p", "1234" ]
