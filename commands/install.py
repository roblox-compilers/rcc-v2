import click 

class Install:
    def __init__(self, cli: click.Group):
        @cli.command()
        @click.argument('package_name')
        def install(package_name):
            print(f"Installing {package_name}")
            
        cli()