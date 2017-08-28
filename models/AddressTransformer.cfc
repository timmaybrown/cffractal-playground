component name="AddressTransformer" singleton {


    function transform( address ) {
        return {
            "address_id" = address.getaddress_id(),
            "address" = address.getaddress(),
            "city" = address.getcity(),
            "state" = address.getstate(),
            "country" = address.getcountry(),
            "postal_code" = address.getpostal_code()
        };
    }

}