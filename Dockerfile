FROM python:3.7-alpine as base
FROM base as builder
RUN mkdir /install
WORKDIR /install

RUN pip install --install-option="--prefix=/install" s4cmd

FROM base

COPY --from=builder /install /usr/local

