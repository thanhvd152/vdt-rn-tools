DIR="./android"
if [ -d "$DIR" ]; then
dirs='src/{assets/{fonts,icon,images,json},components,constants,global,i18n,logics,navigation,services,http,screens,types}';
eval "mkdir -p $dirs";

echo "* With redux (y/n)?"
read redux
if [ $redux == y ]
then
eval 'mkdir -p src/redux/{actions,reducers}';
fi

echo "(VDT NOTIFICATION) => DONE"
else
echo "(VDT NOTIFICATION) => please move to root folder"
fi
