#include <iostream>
#include <cmath>
using namespace std;

string mergeAlternately(string word1, string word2) {
    string merged ="";
    for (int i = 0; i < max(word1.length(), word2.length()); i++)
    {
        if (i < word1.length()) merged += word1[i];
        if (i < word2.length()) merged += word2[i];
    }
    return merged;
}



int main() {
    cout << mergeAlternately("abc", "pqr") << endl; // Expected output: "apbqcr"
    cout << mergeAlternately("ab", "pqrs") << endl; // Expected output: "apbqcd"
    return 0;
}