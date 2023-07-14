# Please edit this name before using
jsonFile=$1
project=$2
if [ "$jsonFile" = "" ]
then
        echo "1. jsonFile "
        exit 1
fi
if [ "$project" = "" ]
then
        echo "2. project ged-kfdeck-liftoff"
        exit 1
fi
#if [ "$project" = "" ]
#then
#        echo "2. project ged-kfdeck-srna" 
#        exit 1
#fi
cmd="aws s3 cp $jsonFile s3://bayerclaw-launcher-443350608742/$project/kfdeck/"
echo $cmd
$cmd
