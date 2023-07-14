# Please edit this name before using
yamlFile=$1
project=$2
if [ "$yamlFile" = "" ]
then
	echo "1. yamlFile " 
	exit 1
fi
if [ "$project" = "" ]
then
        echo "2. project kfdeck-liftoff"
        exit 1
fi
#ga-a1-soy
dir=$PWD
export STACK_TAGS="mon:data-classification=restricted   mon:regulated=no   mon:project=${project}   mon:owner=GED   mon:creator=kfdeck   mon:env=NonProd"

# for bclaw
export MYSTACK="ged-$project"
cmd="aws cloudformation deploy --template-file $dir/$yamlFile --stack-name $MYSTACK --tags $STACK_TAGS --capabilities CAPABILITY_IAM"
echo $cmd
$cmd

# Please check these tags before using
