#!bin/bash 
echo "Removing files.."; 
rm  iui-0.4.1/web-app/iui/iui.js;
rm -rf iui-0.4.1/web-app/iui/t;
rm  iui-0.4.1/web-app/css/iui-panel-list.css;
rm  iui-0.4.1/web-app/iui/iui.css;
echo "Upgrading iUi Framework."; 
mv iui.js iui-0.4.1/web-app/iui/;
mv pkgs.css iui-0.4.1/web-app/css/;
mv iui.css iui-0.4.1/web-app/iui/;
read -r -p "Would you like to remove tutorials, samples and docs? [y/N] " response
case $response in
    [yY][eE][sS]|[yY]) 
        rm -rf iui-0.4.1/web-app/docs iui-0.4.1/web-app/samples iui-0.4.1/web-app/tutorials
        ;;
    *)
        echo "Done!";
        ;;
esac

