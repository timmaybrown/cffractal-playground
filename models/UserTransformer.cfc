component name="UserTransformer" singleton {

    variables.defaultIncludes = [ "address" ];

    function transform( user ) {
        return {
            "user_id" = user.getuser_id(),
            "first_name" = user.getfirst_name(),
            "last_name" = user.getlast_name(),
            "email" = user.getEmail()
        };
    }

    function includeAddress( user ) {
        return item(
            user.getAddress(),
            wirebox.getInstance( "AddressTransformer" )
        );
    }

}