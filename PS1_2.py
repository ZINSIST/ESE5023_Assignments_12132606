import numpy as np

M1 = np.random.randint(50,size=[5,10]) 
M2 = np.random.randint(50,size=[10,5]) 
print(M1,'\n',M2)


M3 = np.zeros([5,5]) 


def Matrix_multip(M1,M2):
    for a in range(0,5):
        for k in range(0,5):
             for b in range(0,10):
                M3[a][k] +=M1[a][b] * M2[b][a]
    print(M3)

        
Matrix_multip(M1,M2)
    
    
