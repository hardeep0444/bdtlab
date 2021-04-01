n<-as.integer(readline(prompt="Enter the number of students"))

Usn<-vector(mode = "character",length = n)
Name<-vector(mode = "character", length = n)
Mark<-vector(mode = "numeric", length = n)
print("Enter Usn, Name, Marks")

  for (i in 1:n) {
    Usn[i]<-as.character(readline())
    Name[i]<-as.character(readline())
    Mark[i]<-as.integer(readline())
  }

student<-data.frame(Usn,Name,Mark)
print(student)

print("Enter Age")
Age<-vector(mode = "numeric", length = n)
for (i in 1:n) {
  Age[i]<-as.integer(readline())  
}
student<-cbind(student,Age)
print(student)

for(i in 1:n)
{
  if(student[i, ][3]>25)
    if(student[i, ][4]<20)
      print(student[i, ])
}
