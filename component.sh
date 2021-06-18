DIR="./src"
if [ -d "$DIR" ]; then
   echo Enter component name:
read name
dirs1="src/components/$name";
dirs2="src/logics/components/$name";
files1="$name.js";
files2="$name.js";
eval "mkdir -p $dirs1";
eval "mkdir -p $dirs2";
echo "import React from 'react'
import { StyleSheet, Text, View } from 'react-native'
import * as logics from '../../logics/modals/$name'
const $name = () => {
    return (
        <View>
            <Text></Text>
        </View>
    )
}
export default $name;
const styles = StyleSheet.create({})" >> $dirs1/$name.tsx
echo "import React,{useState} from 'react'
export function exampleViewModel() {
    const [count, setCount] = useState(0);
    const _increment = () => setCount(count + 1);
    const _decrement = () => setCount(count - 1);
    return { count, _increment, _decrement };
}" >> $dirs2/$name.ts

echo "export { default as $name } from './$name/$name';" >> src/components/index.ts


echo "(VDT NOTIFICATION) => DONE"
else
   echo "(VDT NOTIFICATION) => please move to root folder"
fi
