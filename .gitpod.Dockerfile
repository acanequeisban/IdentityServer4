FROM gitpod/workspace-full:latest

USER gitpod

# Install .NET Core 5.0 SDK binaries on Ubuntu 20.04
# Source: https://dev.to/carlos487/installing-dotnet-core-in-ubuntu-20-04-6jh
RUN mkdir -p /home/gitpod/dotnet && curl -fsSL https://download.visualstudio.microsoft.com/download/pr/de47cbe2-f75f-44c5-8250-7960a36d6591/76cfdbfb7bf17cce27378a9fddd969a6/dotnet-sdk-3.1.404-linux-arm64.tar.gz | tar xz -C /home/gitpod/dotnet
ENV DOTNET_ROOT=/home/gitpod/dotnet
ENV PATH=$PATH:/home/gitpod/dotnet