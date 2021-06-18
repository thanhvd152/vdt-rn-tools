DIR="./android"
if [ -d "$DIR" ]; then

echo "Enter action file name"
read action

echo "Enter action  name"
read actionname

dirs1="src/redux/actions";
eval "mkdir -p $dirs1";

echo "interface type_$actionname{
    type:string
}
export const $actionname = (payload:type_$actionname)=>{

}" >> $dirs1/$action.ts

echo "export { $actionname } from './$action';" >> $dirs1/index.ts

echo "(VDT NOTIFICATION) => DONE"
else
echo "(VDT NOTIFICATION) => please move to root folder"
fi
