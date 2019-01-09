var n_id = ds_map_find_value(async_load, "id");  
//get the id of the socket receiving the data

if n_id == server_socket                     
//check id to make sure it is that of the server socket
    {
    var t = ds_map_find_value(async_load, "type");   
	//get the type of network event
	
    if t == network_type_connect           
	//if it is a connect event 
	
        {                                              
			//get the socket id of the connection		
        var sock = ds_map_find_value(async_load, "socket");
		 //and store it in a variable
        ds_list_add(socketlist, sock);     
		//then write it to a ds_list for future reference
		
        }
	}