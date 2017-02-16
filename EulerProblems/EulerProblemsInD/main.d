module main;

import std.stdio;
import std.math;

int main(string[] argv)
{
	writeln("Rješenje Euler1 = ", Euler1());
	writeln("Rješenje Euler2 = ", Euler2());
	writeln("Rješenje Euler3 = ", Euler3());
//	writeln("Rješenje Euler4 = ", Euler4_LargestPalindromeFrom3DigitProduct());
//	writeln("Rješenje Euler5 = ", Euler5_LargestIntdivisibleByNumbersUpTo20());
	//	writeln("Rješenje Euler6 = ", Euler6());
//	writeln("Rješenje Euler7 = ", Euler7());
	writeln("Rješenje Euler8 = ", Euler8());
//	writeln("Rješenje Euler9 = ", Euler9());
//	writeln("Rješenje Euler10 = ", Euler10());
	writeln("Rješenje Euler14 = ", Euler14());
//	writeln("Rješenje Euler15 = ", Euler15());

//	Euler24();
 
	string a;
	a = readln();
   
	return 0;
}

long Euler14()
{
	int maxSteps = 0;
	long maxNum = 0;

	foreach( a; 10 .. 1_000_000 )
	{
//		long a = 837799;

		int steps = 0;
		long num = a;

		while( num > 1 )
		{
			if( num % 2 == 0 )
				num = num / 2;
			else
				num = 3 * num + 1;

			steps++;
		}

		if( steps > maxSteps )
		{
			maxSteps = steps;
			maxNum = a;
			writeln("a =", a, " steps = ", maxSteps);
		}
	}
	
	return maxNum;
}

int Euler8()
{
	string Number = "73167176531330624919225119674426574742355349194934
96983520312774506326239578318016984801869478851843
85861560789112949495459501737958331952853208805511
12540698747158523863050715693290963295227443043557
66896648950445244523161731856403098711121722383113
62229893423380308135336276614282806444486645238749
30358907296290491560440772390713810515859307960866
70172427121883998797908792274921901699720888093776
65727333001053367881220235421809751254540594752243
52584907711670556013604839586446706324415722155397
53697817977846174064955149290862569321978468622482
83972241375657056057490261407972968652414535100474
82166370484403199890008895243450658541227588666881
16427171479924442928230863465674813919123162824586
17866458359124566529476545682848912883142607690042
24219022671055626321111109370544217506941658960408
07198403850962455444362981230987879927244284909188
84580156166097919133875499200524063689912560717606
05886116467109405077541002256983155200055935729725
71636269561882670428252483600823257530420752963450";

	int	maxProduct = 1;

	foreach(index; 0 .. 995 )
	{
		int prod = 1;
		foreach(a; index .. index+5 )
			prod *= (Number[a] - 48);

		if( prod > maxProduct )
			maxProduct = prod;
	}

	return maxProduct;
}

long Euler10()
{
	long sum = 0;

	foreach( a; 2 .. 2_000_001 )
	{
		if( isPrime(a) )
			sum += a;
	}
	return sum;
}

long Euler7()
{
	int count = 0;
	int a = 2;

	while(1)
	{
		if( isPrime(a) )
		{
			count++;
			
			if( count == 10001 )
			{
//				writeln("10001 prost = ", a);
				break;
			}
		}
		a++;
	}
	return a;
}

long Euler3()
{
	long a = 600851475143;
	int i=2;

	while( i < a )
	{
		if( isPrime(i) )
		{
			if( a % i == 0 )
			{
				while( a % i == 0 )
				{
					a = a / i;
					writeln("Faktor je = ", i, a);
				}
			}
		}
		i++;
	}

	return i;
}

bool isPrime(long a )
{
	float b = a;
	foreach( i; 2 .. sqrt(b)+1 )
	{
		if( a % i == 0 && a != i )
			return false;
	}
	return true;
}

long Euler9()
{
	long maxProduct = 1;

	foreach(a; 1 .. 999)
	{
		foreach( b; 1 .. 999 )
		{
			int c = 1000 - a - b;

			if( a*a + b*b == c*c )
			{
				if( a*b*c > maxProduct)
				{
					maxProduct = a * b * c;
					writeln(maxProduct, " a=", a, " b=", b, " c=",c);
				}
			}
		}
	}
	return maxProduct;
}

void Euler24()
{
	int count = 0;

	foreach( x1; 0 .. 10 ) {
		foreach( x2; 0 .. 10 ) {
			if( x2 == x1 )
				continue;

			foreach( x3; 0 .. 10 ) {
				if( x3 == x1 || x3 == x2 )
					continue;

				foreach( x4; 0 .. 10 ) {
					if( x4 == x1 || x4 == x2 || x4 == x3)
						continue;

					foreach( x5; 0 .. 10 ) {
						if( x5 == x1 || x5 == x2 || x5 == x3 || x5 == x4)
							continue;

						foreach( x6; 0 .. 10 ) {
							if( x6 == x1 || x6 == x2 || x6 == x3 || x6 == x4 || x6 == x5)
								continue;

							foreach( x7; 0 .. 10 ) {
								if( x7 == x1 || x7 == x2 || x7 == x3 || x7 == x4 || x7 == x5 || x7 == x6 )
									continue;

								foreach( x8; 0 .. 10 ) {
									if( x8 == x1 || x8 == x2 || x8 == x3 || x8 == x4 || x8 == x5 || x8 == x6 || x8 == x7 )
										continue;

									foreach( x9; 0 .. 10 ) {
										if( x9 == x1 || x9 == x2 || x9 == x3 || x9 == x4 || x9 == x5 || x9 == x6 || x9 == x7 || x9 == x8 )
											continue;

										foreach( x0; 0 .. 10 ) {
											if( x0 == x1 || x0 == x2 || x0 == x3 || x0 == x4 || x0 == x5 || x0 == x6 || x0 == x7 || x0 == x8 || x0 == x9 )
												continue;

											count++;

											if( count == 1_000_000 )
												write(x1, x2, x3, x4, x5, x6, x7, x8, x9, x0);
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}

}

long Euler15()
{
	long gotThere = 0;
	int gridSize = 20;

	Advance(0,0, gridSize, gotThere);

	return gotThere;
}

void Advance(int x, int y, int gridSize, ref long gotThere)
{
	if( x == gridSize && y == gridSize )
	{
		gotThere++;

		if( gotThere % 10_000_000 == 0 )
			writeln(gotThere);

		return;
	}
	else
	{
		if( x < gridSize )
			Advance( x+1, y, gridSize, gotThere);
		if( y < gridSize )
			Advance(x, y+1, gridSize, gotThere);
	}
}

long Euler6()
{
	long sumOfSquares=0;
	long squareOfSum = 0;
	long sum = 0;

	foreach(i; 1 .. 101 )
	{
		sumOfSquares += i * i;
		sum += i;
	}
	squareOfSum = sum * sum;

	return squareOfSum - sumOfSquares;
}

long Euler5_LargestIntdivisibleByNumbersUpTo20()
{
	long i = 21;
	bool notFound = true;

	do
	{
		notFound = false;
		foreach(j; 1 .. 21 )
			if( i % j != 0 ) {
				notFound = true;
				break;
			}
		if( notFound == true )	i++;
	} while( notFound );

	return i;
}

long Euler4_LargestPalindromeFrom3DigitProduct()
{
	long maxPalindrome = 0;
	foreach( x; 100 .. 1000 ) 
	{
		foreach( y; 100 .. 1000 )
		{
			if( isPalindrome(x*y) == true && x*y > maxPalindrome )
				maxPalindrome = x*y;
		}
	}
	return maxPalindrome;
}

bool isPalindrome(long x)
{
	// nalazimo sve znamenke broja
	int[100] znamenke;
	int count = 0;

	while( x > 0 )
	{
		znamenke[count++] = x % 10;
		x = x / 10;
	}

	foreach( i; 0 .. count/2 )
		if( znamenke[i] != znamenke[count - i - 1] )
			return false;

	return true;
}

unittest
{
	assert(isPalindrome(1));
	assert(isPalindrome(101));
	assert(isPalindrome(9559));
	assert(isPalindrome(25952));
	assert(isPalindrome(1234554321));
	assert(isPalindrome(598895));
}

long Euler2()
{
	long sum = 2;
	long f1, f2, f;

	f1 = 1;
	f2 = 2;
	do 
	{
		f = f1 + f2;

		if( f < 4_000_000 && f % 2 == 0 )
			sum += f;

		f1 = f2;
		f2 = f;
	} while( f < 4_000_000 );

	return sum;
}

unittest
{
	assert( Euler2() == 4613732 );
	assert( Euler1() == 233168 );
	assert( Euler4_LargestPalindromeFrom3DigitProduct() == 906609 );
//	assert( Euler15() == 137846528820 );
}

int Euler1()
{
	int sum = 0;
	foreach( i; 1 .. 1000 )
	{
		if( i % 3 == 0 || i % 5 == 0 )
			sum += i;
	}

	return sum;
}