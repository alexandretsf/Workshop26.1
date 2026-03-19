import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

dias = ["Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado", "Domingo"]
temperaturas = np.random.randint(20, 36, 7)

df = pd.DataFrame({"Dia": dias, "Temperatura": temperaturas})

media = df["Temperatura"].mean()
maxima = df["Temperatura"].max()
minima = df["Temperatura"].min()

print(df)
print("Média:", media)
print("Máxima:", maxima)
print("Mínima:", minima)

plt.figure()
plt.plot(df["Dia"], df["Temperatura"])
plt.title("Temperatura da Semana")
plt.xlabel("Dias")
plt.ylabel("Temperatura")
plt.show()

plt.figure()
plt.plot(df["Dia"], df["Temperatura"], marker='o')
plt.title("Temperatura com Pontos")
plt.xlabel("Dias")
plt.ylabel("Temperatura")
plt.show()

plt.figure()
plt.plot(df["Dia"], df["Temperatura"], linestyle='--')
plt.title("Temperatura Linha Tracejada")
plt.xlabel("Dias")
plt.ylabel("Temperatura")
plt.show()
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

dias = ["Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado", "Domingo"]
temperaturas = np.random.randint(20, 36, 7)

df = pd.DataFrame({"Dia": dias, "Temperatura": temperaturas})

media = df["Temperatura"].mean()
maxima = df["Temperatura"].max()
minima = df["Temperatura"].min()

print(df)
print("Média:", media)
print("Máxima:", maxima)
print("Mínima:", minima)

plt.figure()
plt.plot(df["Dia"], df["Temperatura"])
plt.title("Temperatura da Semana")
plt.xlabel("Dias")
plt.ylabel("Temperatura")
plt.show()

plt.figure()
plt.plot(df["Dia"], df["Temperatura"], marker='o')
plt.title("Temperatura com Pontos")
plt.xlabel("Dias")
plt.ylabel("Temperatura")
plt.show()

plt.figure()
plt.plot(df["Dia"], df["Temperatura"], linestyle='--')
plt.title("Temperatura Linha Tracejada")
plt.xlabel("Dias")
plt.ylabel("Temperatura")
plt.show()