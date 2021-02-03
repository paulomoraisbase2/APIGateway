using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Hosting;
using MMLib.SwaggerForOcelot.DependencyInjection;

namespace APIGateway
{
    public static class Program
    {
        public static void Main(string[] args)
        {
            CreateHostBuilder(args).Build().Run();
        }

        public static IHostBuilder CreateHostBuilder(string[] args) =>
            Host.CreateDefaultBuilder(args)
                .ConfigureWebHostDefaults(webBuilder =>
                {
                    webBuilder.UseStartup<Startup>();
                })
            .ConfigureAppConfiguration((hostingContext, config) =>
            {
                config
                .AddOcelotWithSwaggerSupport((o) =>
                {
                    o.Folder = "OcelotConfig";
                });

                // for local test use below one, multi env json file not worked
                //config.AddJsonFile($"configuration.{hostingContext.HostingEnvironment.EnvironmentName}.json", true, true);
                // https://github.com/ThreeMammals/Ocelot/issues/249
            });
    }
}