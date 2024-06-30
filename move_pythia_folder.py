from distutils.dir_util import copy_tree

def copy_dir(source_dir="AUC_server/python", end_dir="build/@AUC_server/python"):

    paths = copy_tree(source_dir, end_dir)

    return paths

if (__name__ == "__main__"):
    paths = copy_dir()
    print(paths)