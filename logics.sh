DIR="./src"
if [ -d "$DIR" ]; then
echo Enter logic type:
read type
   echo Enter logic name:
read name
dirs2="src/logics/$type/";
files2="$name.js";
eval "mkdir -p $dirs2";

echo "import React,{useState} from 'react'
export function exampleViewModel() {
    const [count, setCount] = useState(0);
    const _increment = () => setCount(count + 1);
    const _decrement = () => setCount(count - 1);
    return { count, _increment, _decrement };
}" >> $dirs2/$name.ts

echo "(VDT NOTIFICATION) => DONE"
else
   echo "(VDT NOTIFICATION) => please move to root folder"
fi
