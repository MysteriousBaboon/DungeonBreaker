client_socket = network_create_socket(network_socket_udp);
var server = network_connect(client_socket,"127.0.0.1",11030);
if server < 0
{
		draw_text(500,500,"Sorry , no available room")
}
else
{
		draw_text(500,500,"Roger");
}