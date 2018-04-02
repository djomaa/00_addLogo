from cx_Freeze import setup, Executable
import os
os.environ['TCL_LIBRARY'] = r'C:/Users/demyo/AppData/Local/Programs/Python/Python35/tcl/tcl8.6'
os.environ['TK_LIBRARY'] = r'C:/Users/demyo/AppData/Local/Programs/Python/Python35/tcl/tk8.6'

executables = [Executable("main.py", base=None)]

options = {
    'build_exe': {
        'include_files':[
            os.path.join("C:/Users/demyo/AppData/Local/Programs/Python/Python35", 'DLLs', 'tk86t.dll'),
            os.path.join("C:/Users/demyo/AppData/Local/Programs/Python/Python35", 'DLLs', 'tcl86t.dll'),
         ],
        'packages': ['PIL','sys','os']
    },

}

setup(
    name="Add Logo",
    options=options,
    version="1.0",
    description='djoma.mosko@gmail.com',
    executables=executables
)