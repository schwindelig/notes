# ASP.NET Core Notes

## Resources

- <https://app.pluralsight.com/library/courses/aspdotnetcore-web-application-building/table-of-contents>
- <https://app.pluralsight.com/library/courses/aspdotnet-core-fundamentals/table-of-contents>

## Benefits

- Open source
- Cross-platform
- Modular request pipeline
- IIS or self-hosting
- Cloud ready
- Integrated dependency injection

## Solution/Project structure

### wwwroot

Root of the website. Hosts .js, .css, images, static html pages, etc.

### *.json

global.json (solution): Where to find the projects in the solution

project.json: Specifies which nuget-packages are used in this project. Also specifies several configurations for the project.

### Program.cs

Configures hosting environment.

### Startup.cs

Configuration of the project. Registers modules. Setup dependency injection.

### ViewStart.cshtml

Contains code that will be injected into all .cshtml files.

### ViewImports.cshtml

Contains using statements which will be used in all .cshtml files.

## Dependency injection

Within `Startup` in the `ConfigureServices` method, DI can be set up.

```csharp
public void ConfigureServices(IServiceCollection services)
{
    services.AddTransient<ISomeRepository, SomeRepository>();
}
```

- `Transient` registrations will always return a new instance when an object is resolved.
- `Singleton` registrations return a singleton - the same instance
- `Scoped` registrations return one instance for each request.