import os
import torch

print("This is my first docker img")
print("Current directory is: ", os.getcwd())
print("List of files in current directory: ", os.listdir())

# Check if PyTorch is using GPU
if torch.cuda.is_available():
    print("PyTorch is using GPU")
    print("GPU Name: ", torch.cuda.get_device_name(0))
else:
    print("PyTorch is not using GPU")