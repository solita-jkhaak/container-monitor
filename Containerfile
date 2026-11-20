ARG IMAGE

FROM $IMAGE

RUN apk add btop
CMD btop --force-utf
