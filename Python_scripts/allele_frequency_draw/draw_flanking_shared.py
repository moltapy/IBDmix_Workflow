import matplotlib.pyplot as plt

x=[]
y=[]
with open("E:\\Github_local\\IBDmix_Workflow\\Python_scripts\\allele_frequency_draw\\data_plot.txt","r") as input:
    for line in input:
        line=line.strip().split("\t")
        x.append(float(line[1]))
        y.append(float(line[2]))
plt.scatter(x,y)
plt.xlabel("x")
plt.ylabel("y")
plt.title("plot")
plt.show()