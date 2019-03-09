.NET Core Basic WebApi Template
===

A basic .NET Core 2.2 WebApi and unit test project created entirely from the dotnet CLI using the following steps:

```sh
mkdir dotnet-webapi && cd dotnet-webapi
dotnet new sln --name WebApi
dotnet new webapi --name WebApi --output WebApi
dotnet sln add WebApi/WebApi.csproj
dotnet new nunit --name WebApi.UnitTests --output WebApi.UnitTests
dotnet sln add WebApi.UnitTests/WebApi.UnitTests.csproj
dotnet build WebApi.sln
```