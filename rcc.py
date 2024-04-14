import click 

from commands.install import Install

@click.group()
def group():
    pass


if __name__ == '__main__':
    Install(group)