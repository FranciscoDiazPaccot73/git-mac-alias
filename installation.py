import os
import shutil

home_dir = os.path.expanduser('~')

def copy_folder(source, destination):
    if not os.path.exists(destination):
        os.makedirs(destination)

    for item in os.listdir(source):
        source_path = os.path.join(source, item)
        destination_path = os.path.join(destination, item)
        
        if os.path.isdir(source_path):
            copy_folder(source_path, destination_path)
        else:
            shutil.copy2(source_path, destination_path)

source_folder = 'scripts'
destination_folder = f"{home_dir}/my_scripts"

copy_folder(source_folder, destination_folder)
print('Successfully executed.')
