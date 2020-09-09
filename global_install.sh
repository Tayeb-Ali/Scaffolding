VERSION=3.1.4
DEFAULT_NUPKG_PATH=~/.nuget/packages
SRC_DIR=pwd
NUPKG=artifacts/packages/Debug/Shipping/
sudo kill -9 dotnet
sudo git clean -xdf
sudo ./build.sh 
sudo dotnet tool uninstall -g dotnet-aspnet-codegenerator 

cd $DEFAULT_NUPKG_PATH
rm -rf microsoft.visualstudio.web.codegeneration
rm -rf microsoft.visualstudio.web.codegeneration.contracts
rm -rf microsoft.visualstudio.web.codegeneration.core
rm -rf microsoft.visualstudio.web.codegeneration.design
rm -rf microsoft.visualstudio.web.codegeneration.entityframeworkcore
rm -rf microsoft.visualstudio.web.codegeneration.templating
rm -rf microsoft.visualstudio.web.codegeneration.utils
rm -rf microsoft.visualstudio.web.codegenerators.mvc

cd  $SRC_DIR/$NUPKG%
sudo dotnet tool install -g dotnet-aspnet-codegenerator --add-source $SRC_DIR/$NUPKG --version $VERSION
cd $SRC_DIR