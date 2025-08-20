initcode=$(forge script script/GondiInitCode.s.sol:GondiInitCode --json | jq -r '.returns.initCode.value')
echo $initcode
cast create2 --caller 0x0000000000000000000000000000000000000000  -e 0000000 -d 0x0000000000FFe8B47B3e2130213B802212439497 --no-random -i $initcode