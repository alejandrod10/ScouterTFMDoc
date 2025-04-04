FROM python:3.11.11-bookworm

# Install basic packages
RUN apt update &&\
 apt install --assume-yes --no-install-recommends -y\
 build-essential\
 ca-certificates\
 curl\
 git-all\
 htop\
 procps\
 texlive-full\
 wget\
 vim\
 zsh

# Install pandoc
RUN apt install -y pandoc

# Install pip and poetry
RUN pip install poetry

# Install oh-my-zsh
RUN yes Y | sh -c "$(curl -k -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"