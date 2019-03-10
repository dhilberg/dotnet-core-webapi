FROM mcr.microsoft.com/dotnet/core/sdk:2.2 AS build-environment
WORKDIR /app

# Copy sln and csproj preserving directory structure and restore as distinct layers
COPY WebApi.sln ./
COPY WebApi/WebApi.csproj ./WebApi/WebApi.csproj
COPY WebApi.UnitTests/WebApi.UnitTests.csproj ./WebApi.UnitTests/WebApi.UnitTests.csproj
RUN dotnet restore WebApi.sln

# Copy everything else, run unit tests, and publish for deployment
COPY . ./
RUN dotnet build WebApi.sln
RUN dotnet test ./WebApi.UnitTests/WebApi.UnitTests.csproj
RUN dotnet publish --configuration Release WebApi.sln --output publish

# Build runtime image
FROM mcr.microsoft.com/dotnet/core/aspnet:2.2 AS runtime-environment
WORKDIR /app
COPY --from=build-environment /app/WebApi/publish .
ENTRYPOINT ["dotnet", "WebApi.dll"]