import matplotlib.pyplot as plt
y1=60000
y2=3600
C2=y1*(1+0.1)+y2
C1=y1+(y2/(1+0.1))

print((C1/1000,0),(C2/1000,0))


S1=1000
k1=1.1

x = [0,C1/1000]
y = [C2/1000,0]

plt.plot(x, y, "-o")
x0 = [y1/1000]
y0 = [y2/1000]
plt.plot(x0, y0, "s")

x1=[(y1/1000)+1000]
y1=[x1*k1+C2/1000]
plt.plot(x1,y1,"s")
plt.show()