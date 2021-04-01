n<-as.integer(readline(prompt="Enter the number of employees"))

EmpId <- vector(mode="character", length=n)
EmpName <- vector(mode="character", length=n)
DOJ <- vector(mode="character", length=n)
EmpCode <- vector(mode="numeric",length=n)
Desig <- vector(mode="character",length=n)
Dept <- vector(mode="character",length=n)

print("Enter Employee id,name,doj,code,designation,department")
for (i in 1:n)
  {
  EmpId[i] <-as.character(readline())
  EmpName [i] <-as.character(readline())
  DOJ[i] <-as.character(readline())
  EmpCode[i] <-as.integer(readline())
  Desig[i] <-as.character(readline())
  Dept[i] <-as.character(readline())
}

Emp <- data.frame(EmpId,EmpName,EmpCode,Desig,Dept,DOJ)
print("The Employee detials are as follows")
print(Emp)

write.csv(Emp,"/home/student/Desktop/test.csv")
read.csv("/home/student/Desktop/test.csv")

print("Enter a new row")
u<- readline(prompt = "EmpId")
n<- readline(prompt = "EmpName")
m<- readline(prompt = "EmpCode")
A<- readline(prompt = "Desig")
s<- readline(prompt = "Dept")
t<- readline(prompt = "DOJ")
x<- data.frame(u,n,m,A,s,t)
write.table(x,"/home/student/Desktop/test.csv",col.names = FALSE, append = T,row.names= T, quote= FALSE, sep = ",")
