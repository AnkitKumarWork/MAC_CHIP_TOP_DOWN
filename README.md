# MAC Chip Implementation on FPGA

Project Overview

This project demonstrates the implementation of a MAC (Multiply-Accumulate) chip on an FPGA using a top-down design approach. The chip computes the product of input signals and accumulates the results over N iterations. The primary goal of this project is to perform high-speed multiplication and accumulation efficiently.

Features

Top-down design approach for modular and organized development.
![image](https://github.com/user-attachments/assets/0caa26d6-9fbe-409b-8fa8-8132cd6e9679)

Inputs:

4bit a: Input vector A.

4bit b: Input vector B.

4bit N : Number of computions. here N=10

clk: Clock signal.

rst: Reset signal (active high).

Outputs:

 we require 12 bit output register to store 12 bit numbers;
 
12 bit:  sumout: The accumulated result.

1 bit : done: Indicates computation completion. 

# Equation
The computation performed by the MAC chip is:

![image](https://github.com/user-attachments/assets/9bf29a9c-d085-44e3-b9a2-8bcda9fc92a8)

# algo- 

![image](https://github.com/user-attachments/assets/a541aa63-fdef-4fe4-a767-b4779376f462)

# ASM- 

![image](https://github.com/user-attachments/assets/cb9bfff9-6401-426f-bec5-3b1be4d49111)

# Datapath- 

![image](https://github.com/user-attachments/assets/bab4a3e3-0a8b-439a-bd48-f41cb46f6ca6)

# Controller - 

![image](https://github.com/user-attachments/assets/a11c286a-10dd-4d2f-8fe5-be80af98e07f)

# Topmodule - 

![image](https://github.com/user-attachments/assets/ebfcad37-adad-436d-83a4-0aaf40fcd802)

# Results - 

# SCHEMATIC- 

![image](https://github.com/user-attachments/assets/4e7429c1-ee70-4ffe-a45a-63a4b9cf8064)


# FUNCTIONAL VERIFICATION - 

![image](https://github.com/user-attachments/assets/62cbac32-3ecc-4b2a-a9e5-7bdb6c06aa6e)










