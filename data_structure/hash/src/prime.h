/*
 * Return whether x is prime or not
 *
 * Returns:
 *   1  - prime
 *   0  - not prime
 *   -1 - undefined (i.e. x < 2)
 */
int is_prime(const int x);

/*
 * Return the next prime after x, or x if x is prime
 */
int next_prime(int x);