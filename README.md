DotNet Basic WebApi Template
===

A basic dotnet WebApi and unit test project created entirely from the dotnet CLI using the following steps:

1. `mkdir dotnet-webapi && cd dotnet-webapi`
2. `dotnet new sln --name WebApi`
3. `dotnet new webapi --name WebApi --output WebApi`
4. `dotnet sln add WebApi/WebApi.csproj`
5. `dotnet new nunit --name WebApi.UnitTests --output WebApi.UnitTests`
6. `dotnet sln add WebApi.UnitTests/WebApi.UnitTests.csproj`
7. `dotnet build WebApi.sln`