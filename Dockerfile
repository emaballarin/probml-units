FROM mambaorg/micromamba:jammy-cuda-11.8.0
COPY --chown=$MAMBA_USER:$MAMBA_USER environment.yml /tmp/env.yaml
RUN micromamba install -y -n base -f /tmp/env.yaml && micromamba clean -a -f -y
RUN rm -f /tmp/env.yaml
WORKDIR /home/mambauser
