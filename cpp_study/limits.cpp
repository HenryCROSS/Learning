#include <iostream>
#include <climits>

int main(void)
{
    using namespace std;
    int n_int = INT_MAX;
    short n_short = SHRT_MAX;
    long n_long = LONG_MAX;
    long long n_llong = LLONG_MAX;

    cout << "int is " << sizeof (int) << " bytes." << endl
         << "short is " << sizeof n_short << " bytes." << endl
         << "long is " << sizeof n_long << " bytes." << endl
         << "long long is " << sizeof n_llong << " bytes." << endl 
         << endl;

    cout << "Maximum values:" << endl
         << "int: " << n_int << endl
         << "short: " << n_short << endl
         << "long: " << n_long << endl
         << "long long: " << n_llong << endl;

    cout << "Minimum int value = " << INT_MAX << endl
         << "Bits per byte = " << CHAR_BIT << endl;
    return 0;
}