"""
Your module documentation here
"""


class PrimeClass(object):
    """
    Your class documentation here
    """

    def is_prime(self, num_int):
        """
        Your method documentation here
        """
        # your primes code here
a=0
num_int=int(input("Ingrese numero\n"))
for i in range(1,num_int+1):
 if(num_int % i==0):
  a=a+1
if(a!=2):
 print(False)
else:
 print(True)        
        #return "not implement yet"  # Remove this dummy line
