import click, inquirer, os 

from inquirer import List

def display_option_menu(options, msg):
    questions = [
        List('option',
             message=msg,
             choices=options)
    ]

    answers = inquirer.prompt(questions)
    selected_option = answers['option']
    return selected_option

class Install:
    def __init__(self, cli: click.Group):
        @click.command()
        @click.option('--build', default=False, is_flag=True)
        @click.option('--demo', default=False, is_flag=True)
        def install(build, demo):            
            options = ["roblox-py", "fullstack", "roblox-c (C)", "roblox-c (C++)", "roblox-cs"]

            chosen = display_option_menu(options, "Select a compiler")
            print(chosen)
            
            if build == True:
                # TODO: pulls directly from the github releases, and installs the .exe file
                print("Installing latest version...")
            
            if demo == True:
                # TODO: install the templates folder to their folder (whatever they cd into)
                # TODO: change the ending of the files to match their option, so roblox-py is .py etc etc
                # TODO: ^, make sure you edit the files after you change their ending to the respected print statement for the lang
                print("Installing demo...")
            
        cli.add_command(install)
        cli()