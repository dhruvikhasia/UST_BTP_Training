namespace ust.reuse;
 
//reuse type for single field
type Guid : String(32); //resuing this guid multiple times in other file
 
 
//we want group of fields in our requirement
//like address data - houseNo, street, block, landmark, city, country
//structure are reusable
//creating structure
aspect address{
    houseNo: Integer;
    street: String(32);
    sector: String(44);
    landmark: String(80);
    city: String(55);
    country: String(4);
}