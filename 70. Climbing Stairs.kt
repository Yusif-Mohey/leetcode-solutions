
fun  guessNumber( n :Int):Int {
    var left = 1;
    var right = n;

    while (left <= right) {
        int mid = left + (right - left) / 2;
        int res = guess(mid);

        if (res == 0) {
            return mid;
        } else if (res < 0) {
            right = mid - 1;
        } else {
            left = mid + 1;
        }
    }
    return -1; 
}
fun main(){
print(guessNumber(10)); //  6 
print(guessNumber(2)); //  1 
print(guessNumber(1)); //  1 
}
