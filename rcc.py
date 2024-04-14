import click 

from commands.install import Install

@click.group()
def group():
    pass

@click.command()
def rcc():
    print("usage: \033[31;1mrcc\033[0m [command] [options]")
    print("\033[1mCommands:\033[0m")
    print("  \033[1mhelp\033[0m\t\topen this help menu")
    print("  \033[1minit\033[0m\t\tinitialize a project")
    print("  \033[1minstall\033[0m\tinstall a compiler")
    print("  \033[1muninstall\033[0m\tuninstall a compiler")
    print("  \033[1mupdate\033[0m\tupdate a compiler")
    print("\033[1mOptions:\033[0m")
    print("  \033[1m-o\033[0m\t\toutput directory (default: out)")
    print("  \033[1m<none>\033[0m\tinput directory (default: src)")
    print("  \033[1m-d\033[0m\t\tdebug mode")
    print("\033[1mExamples:\033[0m")
    print("  \033[1mrcc\033[0m \033[1minstall\033[0m roblox-py")
    print("  \033[1mrcc\033[0m \033[1muninstall\033[0m roblox-py")
    print("  \033[1mrcc\033[0m \033[1mupdate\033[0m roblox-py")
    print("  \033[1mrcc\033[0m \033[1m-o\033[0m out")
    print("  \033[1mrcc\033[0m \033[1m-o\033[0m out src")
    print("  \033[1mrcc\033[0m \033[1minclude\033[0m @roblox/roact")



if __name__ == '__main__':
    group.add_command(rcc)
    Install(group)