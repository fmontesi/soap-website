include "admin.iol"

outputPort Admin {
Location: "socket://localhost:9001/"
Protocol: sodep
Interfaces: AdminInterface
}

main
{
	shutdown@Admin()()
}
