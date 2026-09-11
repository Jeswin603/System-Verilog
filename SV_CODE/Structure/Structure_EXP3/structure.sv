// Create a structure to store "int" and "real" variables
// A name is given to the structure and declared to be a data type so
// that this name "s_money" can be used to create structure variables
typedef struct {
	int 	coins;
	real 	dollars;
} s_money;

// Create a structure variable of type s_money
s_money wallet;

wallet = '{5, 19.75};                       // Assign direct values to a structure variable
wallet = '{coins:5, dollars:19.75};         // Assign values using member names
wallet = '{default:0};                      // Assign all elements of structure to 0
wallet = s_money'{int:1, dollars:2};        // Assign default values to all members of that type

// Create a structure that can hold 3 variables and initialize them with 1
struct {
	int  A, B, C;
} ABC = '{3{1}}; 							// A = B = C = 1

// Assigning an array of structures
s_money purse [1:0] = '{'{2, 4.25}, '{7,1.5}};
