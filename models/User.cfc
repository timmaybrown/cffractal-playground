component name="User" accessors="true" {

    property name="user_id";
    property name="first_name";
    property name="last_name";
    property name="email";

   	property name="populator" inject="wirebox:populator";


    function getAddress() {
    	var address = wirebox.getInstance('Address');

    	populator.populateFromStruct( address, {
			"id" = "1234",
	   		"address" = "1234 Road",
	   		"city" = "Montrose",
	   		"state" = "CO",
	   		"country" = "USA",
	   		"postal_code" = "81401"
    	});
    	return address;

    }

}