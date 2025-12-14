#include <iostream>
#include <cmath>
using namespace std;

int countOdds(int low, int high){
return (high + 1) / 2 - low / 2;
}

int main() {
cout<<countOdds(3, 7)<<endl; // Output: 3
cout<<countOdds(8, 10)<<endl; // Output: 1
    return 0;
}