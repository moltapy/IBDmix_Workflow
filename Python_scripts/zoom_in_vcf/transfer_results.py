data = []
with open("data_origin.txt", "r") as file:
    for line in file:
        if line.strip().isdigit():
            count = int(line)
            data.append((condition, count))
        else:
            temp=""
            condition=""
            for index,i in enumerate(line):
                if i.isdigit():
                    print(index)
                    temp+=i
                    #注意这里最后一位是\n
                    if ((index!=len(line)-2) and (not line[index+1].isdigit())):
                        condition+=f"{temp},"
                        temp=""
                    elif(index==len(line)-2):
                        condition+=temp
                        temp=""

            

# 写入转换后的数据到新文件
with open("converted_data.txt", "w") as output_file:
    for condition, count in data:
        output_file.write(f"{condition}\n{count}\n")

print("Data conversion completed.")