set -x
if [ -z "$PRIVATE_KEY" ]; then
  echo "Error: PRIVATE_KEY environment variable is not set."
  exit 1
fi

if [ -z "$ETH_RPC_URL" ]; then
  echo "Error: ETH_RPC_URL environment variable is not set."
  exit 1
fi


if ! command -v jq &> /dev/null; then
  echo "Error: jq is not installed. Please install jq to continue."
  exit 1
fi

forge script script/GondiDeployer.s.sol:GondiDeployer --rpc-url $ETH_RPC_URL --broadcast --verify
