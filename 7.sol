def display_transaction(transaction):
   #for transaction in transactions:
   dict = transaction.to_dict()
   print ("sender: " + dict['sender'])
   print ('-----')
   print ("recipient: " + dict['recipient'])
   print ('-----')
   print ("value: " + str(dict['value']))
   print ('-----')
   print ("time: " + str(dict['time']))
   print ('-----')

   transactions = []

Dinesh = Client()
Ramesh = Client()
Seema = Client()
Vijay = Client()

t1 = Transaction(
   Dinesh,
   Ramesh.identity,
   15.0
)

t1.sign_transaction()
transactions.append(t1)

t2 = Transaction(
   Dinesh,
   Seema.identity,
   6.0
)
t2.sign_transaction()
transactions.append(t2)
t3 = Transaction(
Ramesh,
   Vijay.identity,
   2.0
)
t3.sign_transaction()
transactions.append(t3)
t4 = Transaction(
   Seema,
   Ramesh.identity,
   4.0
)
t4.sign_transaction()
transactions.append(t4)
t5 = Transaction(
   Vijay,
   Seema.identity,
   7.0
)
t5.sign_transaction()
transactions.append(t5)
t6 = Transaction(
   Ramesh,
   Seema.identity,
   3.0
)
t6.sign_transaction()
transactions.append(t6)
t7 = Transaction(
   Seema,
   Dinesh.identity,
   8.0
)
t7.sign_transaction()
transactions.append(t7)
t8 = Transaction(
   Seema,
   Ramesh.identity,
   1.0
)
t8.sign_transaction()
transactions.append(t8)
t9 = Transaction(
   Vijay,
   Dinesh.identity,
   5.0
)
t9.sign_transaction()
transactions.append(t9)
t10 = Transaction(
   Vijay,
   Ramesh.identity,
   3.0
)
t10.sign_transaction()
transactions.append(t10)

for transaction in transactions:
   display_transaction (transaction)
   print ('--------------')

class Block:
   def __init__(self):
      self.verified_transactions = []
      self.previous_block_hash = ""
      self.Nonce = ""

last_block_hash = ""

Dinesh = Client()

t0 = Transaction (
   "Genesis",
   Dinesh.identity,
   500.0
)

block0 = Block()

block0.previous_block_hash = None
Nonce = None

block0.verified_transactions.append (t0)

digest = hash (block0)
last_block_hash = digest

TPCoins = []

def dump_blockchain (self):
   print ("Number of blocks in the chain: " + str(len (self)))
   for x in range (len(TPCoins)):
      block_temp = TPCoins[x]
      print ("block # " + str(x))
      for transaction in block_temp.verified_transactions:
         display_transaction (transaction)
         print ('--------------')
      print ('=====================================')

TPCoins.append (block0)
dump_blockchain(TPCoins)


