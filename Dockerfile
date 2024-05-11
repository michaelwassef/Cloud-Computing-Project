# Use the official ASP.NET runtime image
FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

# Copy the published files directly into the container
COPY web/ .

# Define the entry point for the container
ENTRYPOINT ["dotnet", "IOMSYS.dll"]