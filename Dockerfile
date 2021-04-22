# Dockerfile for binder
# Reference: https://mybinder.readthedocs.io/en/latest/dockerfile.html#preparing-your-dockerfile

FROM sagemath/sagemath:9.1-py3

# Copy the contents of the repo in ${HOME}
COPY --chown=sage:sage . ${HOME}

# Install this package and dependencies
USER root
RUN apt-get -qq update 
RUN apt-get -qq install -y --no-install-recommends uofsc_calculus_labs 
RUN apt-get -qq clean
USER sage
