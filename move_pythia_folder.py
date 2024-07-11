from distutils.dir_util import copy_tree

def copy_dir(source_dir="AUC_server/python", end_dir="build/@AUC_server/python"):

    paths = copy_tree(source_dir, end_dir)

    return paths

if (__name__ == "__main__"):
    pathsFirst = copy_dir(source_dir="build/@AUC_server", end_dir="build/@AUC_server_python")
    pathsLast = copy_dir(source_dir="AUC_server/python", end_dir="build/@AUC_server_python/python")
    print(pathsFirst, pathsLast)