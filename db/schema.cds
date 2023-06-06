namespace com.practise;

entity Cars {
    key id                 : Int64;
        brand              : String;
        colors             : String;
        impact             : Integer;
        criticality        : Integer;
        rating             : Decimal(2, 1) @assert.range : [ 0.0, 5.0 ];
        amountManufactured : Int64;
        maker              : Association to CarMakers;
}

entity CarMakers {
    key id    : Int64;
        name  : String;
        cars  : Association to many Cars
                    on cars.maker = $self;
        state : String;
}
