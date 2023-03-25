# Run same script for each container
# Run script as a CNI to automate the process
ADD)
# Create veth pair
ip link add ...

# Attach veth pair
ip link set ...
ip link set ...

# Assign IP Address
ip -n <namespace> addr add ..
ip -n <namespace> route add ..

# Bring up interface
ip -n <namespace> link set ...

DEL)

# Delete veth pair
ip link del ....
