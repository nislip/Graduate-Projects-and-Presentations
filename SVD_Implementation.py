import numpy as np
import pandas as pd

X = np.random.rand(5,3) # random matrix 
U,S,V = np.linalg.svd(X, full_matrices=True) # Full SVD 
Uhat, Shat, Vhat = np.linalg.svd(X, full_matrices=True) # Economy SVD

dfU, dfS, dfV = pd.DataFrame(U), pd.DataFrame(S), pd.DataFrame(V)

print(dfU.to_latex(index=False, caption="the matrix $\mathbf{U}$"))
print(dfS.to_latex(index=False, caption="the matrix $\mathbf{S}$"))
print(dfV.to_latex(index=False, caption="the matrix $\mathbf{V}$"))