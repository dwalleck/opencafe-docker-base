# opencafe-docker-base

A Docker base image for OpenCafe-based projects. If you want to persist log
files, make sure to mount a volume to "/root/.opencafe/logs". To use external
configuration files, mount your configuration directory to
"/root/.opencafe/configs/<your_product>".
