public Digits(int num) {
    digitList = new ArrayList<>();
    if (num == 0) {
        digitList.add(0);
    } else {
        int n = num;
        while (n > 0) {
            digitList.add(0, n%10);
            n /= 10;
        }
    }
}
public boolean isStrictlyIncreasing() {
    for (int i = 0; i < digitList.size() - 1; i++) {
        if (digitList.get(i) >= digitList.get(i + 1)) {
            return false;
        }
    }
    return true;
