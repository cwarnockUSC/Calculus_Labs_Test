# Dockerfile for binder
# Reference: https://mybinder.readthedocs.io/en/latest/dockerfile.html#preparing-your-dockerfile

FROM sagemath/sagemath:9.1-py3

# Copy the contents of the repo in ${HOME}
COPY --chown=sage:sage . ${HOME}

# Install this package and dependencies
USER root
RUN apt-get -qq update \
 && apt-get -qq install -y --no-install-recommends <uofsc_Calculus_Labs> \
 && apt-get -qq clean
USER sage
