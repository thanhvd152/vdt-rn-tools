DIR="./android"
if [ -d "$DIR" ]; then

echo "Enter reducer name"
read reducer

dirs1="src/redux/reducers";
eval "mkdir -p $dirs1";

echo "interface actionT {
  type: string,
}
const init = {
};
const $reducer = (state = init, action: actionT) => {
  switch (action.type) {
    case 'SOME_CASE':
      return { ...state, data:'...' };
    default:
      return state;
  }
};
export default $reducer;" >> $dirs1/$reducer.ts

echo "export { default as $reducer } from './$reducer';" >> $dirs1/index.ts

echo "(VDT NOTIFICATION) => DONE"
else
echo "(VDT NOTIFICATION) => please move to root folder"
fi
