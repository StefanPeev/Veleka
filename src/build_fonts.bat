@echo off

python3 -m fontmake -i -a -o ttf -m VelekaWorld.designspace
python3 -m fontmake -i -a -o otf -m VelekaWorld.designspace
python3 -m fontmake -a -o variable -m VelekaWorld.designspace

python fix-dsig.py .\autohinted\instance_ttf\VelekaWorld-Regular.ttf |
python fix-dsig.py .\autohinted\instance_ttf\VelekaWorld-Medium.ttf |
python fix-dsig.py .\autohinted\instance_ttf\VelekaWorld-SemiBold.ttf |
python fix-dsig.py .\autohinted\instance_ttf\VelekaWorld-Bold.ttf |
python fix-dsig.py .\instance_otf\VelekaWorld-Regular.otf |
python fix-dsig.py .\instance_otf\VelekaWorld-Medium.otf |
python fix-dsig.py .\instance_otf\VelekaWorld-SemiBold.otf
python fix-dsig.py .\instance_otf\VelekaWorld-Bold.otf |

python fix-dsig.py .\variable_ttf\VelekaWorld-VF.ttf | 

move .\autohinted\instance_ttf\*.ttf ..\fonts\ttf\
move .\instance_otf\*.otf ..\fonts\otf\
move .\variable_ttf\VelekaWorld-VF.ttf ..\fonts\vf\VelekaWorld[wght].ttf
rmdir .\autohinted\instance_ttf\
rmdir .\autohinted\
rmdir .\instance_otf\
rmdir .\variable_ttf\
python ..\fonts\generate-woff-woff2.py
exit