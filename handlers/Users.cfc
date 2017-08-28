/**
* USERS - RESTful event handler
*/
component extends="BaseHandler"{

	//dependencies
	property name="fractal" inject="Manager@cffractal";
	property name="populator" inject="wirebox:populator";

	/**
	* Index
	*/
	any function index( event, rc, prc ){
		var user = getInstance("User");

		populator.populateFromStruct(user, {
			"user_id" = 5234,
			"first_name" = "Tim",
			"last_name" = "Brown",
			"email" = "tim@tim.com"
    	});

		var resource = fractal.item(
    		user,
    		getInstance( "UserTransformer" )
		);

		var scope = fractal.createData( resource );

        prc.response.setData(
            scope.convert()
        );
	}

}