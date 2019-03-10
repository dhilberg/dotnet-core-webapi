# .NET Core Basic WebApi Template

## Overview

A basic .NET Core 2.2 WebApi and NUnit test project created entirely from the dotnet CLI using the following steps:

```sh
mkdir dotnet-core-webapi && cd dotnet-core-webapi

# Initialize project templates
dotnet new sln --name WebApi
dotnet new webapi --name WebApi --output WebApi
dotnet sln add WebApi/WebApi.csproj
dotnet new nunit --name WebApi.UnitTests --output WebApi.UnitTests
dotnet sln add WebApi.UnitTests/WebApi.UnitTests.csproj

# Pack for deployment
dotnet publish --configuration Release WebApi.sln --output publish
```

## Running with Docker

The WebApi can optionally be run using the included Dockerfile:

```sh
cd dotnet-core-webapi

# Build the image using name:<descriptive tag>
docker build --tag webapi:mytag .

# Run the image in a container in detached mode (background), mapping port 8080 to the container's port 80
docker run --detach --publish 8080:80 webapi:mytag
```